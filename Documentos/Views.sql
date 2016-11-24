CREATE VIEW FuncionarioInsatisfatorios AS
    SELECT f.nome, f.cpf, pe.atendimento
    FROM funcionario as f, pesquisa as pe, pedido as p
    WHERE f.id = p.funcionario_id AND pe.id = p.pesquisa_id AND pe.atendimento < 5;

CREATE VIEW RelatorioPedidos AS
    SELECT fu.nome, ip.alimento, ip.quantidade, fl.loja_id
    FROM funcionario as fu, ip as itens_pedido, fl as funcionario_loja
    WHERE fu.id = fl.funcionario_id AND fu.id = p.funcionario_id;

CREATE VIEW RelatorioLojasPorCidade AS
    SELECT c.nome, count(l.*)
    FROM cidade as c, logradouro as log, loja as l, endereco as ende
    WHERE ende.id = l.endereco_id AND log.id = ende.logradouro_id AND c.id = log.cidade_id
    GROUP BY c.nome
    ORDER BY c.nome;

CREATE VIEW LojasELocais AS
    SELECT c.nome as cidade_nome, e.nome as estado_nome, ende.CEP, logra.nome as logradouro_nome, l.*
    FROM cidade as c, estado as e, logradouro as logra, loja as l, endereco as ende
    WHERE ende.id = l.endereco_id AND logra.id = ende.logradouro_id AND c.id = logra.cidade_id AND e.id = c.estado_id
    ORDER BY c.nome;

CREATE VIEW VeiculosEntregaHoje AS
	SELECT v.id, v.placa
	FROM veiculo v, entrega e
	WHERE e.data_hora = CURRENT_DATE AND e.veiculo_id = v.id

-- Trigger

CREATE OR REPLACE FUNCTION FazPedidoReduzEstoque()
	RETURNS trigger AS $$
BEGIN
	UPDATE estoque_loja as el 
	SET el.quantidade = el.quantidade - NEW.quantidade  
	WHERE NEW.alimento_id = el.alimento_id
	RETURNING NEW;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER FazPedidoReduzEstoque
  BEFORE INSERT
  ON itens_pedido
  FOR EACH ROW
  EXECUTE PROCEDURE FazPedidoReduzEstoque();

-- Stored Procedure

CREATE OR REPLACE FUNCTION DeletaPesquisasAntigas()
RETURNS void AS $$
BEGIN
  DELETE FROM pesquisa pes
  WHERE pes.id IN
    (
      SELECT ped.pesquisa_id
      FROM pedido ped
      WHERE ped.date + INTERVAL '5 years' < current_date
    );
END;
$$ LANGUAGE 'plpgsql';
