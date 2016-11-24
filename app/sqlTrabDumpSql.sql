--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: alimento; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE alimento (
    id integer NOT NULL,
    nome text NOT NULL,
    proteinas integer NOT NULL,
    carboidratos integer NOT NULL,
    gorduras integer NOT NULL,
    calorias integer NOT NULL,
    preco double precision NOT NULL,
    ingrediente boolean NOT NULL,
    recheiro boolean NOT NULL,
    marca text NOT NULL,
    tipo_id integer NOT NULL
);


ALTER TABLE public.alimento OWNER TO postgres;

--
-- Name: Alimento_alimento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Alimento_alimento_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Alimento_alimento_id_seq" OWNER TO postgres;

--
-- Name: Alimento_alimento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Alimento_alimento_id_seq" OWNED BY alimento.id;


--
-- Name: centro_distribuicao; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE centro_distribuicao (
    id integer NOT NULL,
    email text NOT NULL,
    nome text NOT NULL,
    telefone integer NOT NULL,
    endereco_id integer NOT NULL
);


ALTER TABLE public.centro_distribuicao OWNER TO postgres;

--
-- Name: Centro_Distribuicao_centro_distribuicao_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Centro_Distribuicao_centro_distribuicao_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Centro_Distribuicao_centro_distribuicao_id_seq" OWNER TO postgres;

--
-- Name: Centro_Distribuicao_centro_distribuicao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Centro_Distribuicao_centro_distribuicao_id_seq" OWNED BY centro_distribuicao.id;


--
-- Name: cidade; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cidade (
    id integer NOT NULL,
    nome text NOT NULL,
    estado_id integer NOT NULL
);


ALTER TABLE public.cidade OWNER TO postgres;

--
-- Name: Cidade_cidade_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Cidade_cidade_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Cidade_cidade_id_seq" OWNER TO postgres;

--
-- Name: Cidade_cidade_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Cidade_cidade_id_seq" OWNED BY cidade.id;


--
-- Name: distribuidor_tercerizado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE distribuidor_tercerizado (
    id integer NOT NULL,
    nome text NOT NULL,
    contato integer NOT NULL
);


ALTER TABLE public.distribuidor_tercerizado OWNER TO postgres;

--
-- Name: Distribuidor_Tercerizado_distribuidor_tercerizado_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Distribuidor_Tercerizado_distribuidor_tercerizado_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Distribuidor_Tercerizado_distribuidor_tercerizado_id_seq" OWNER TO postgres;

--
-- Name: Distribuidor_Tercerizado_distribuidor_tercerizado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Distribuidor_Tercerizado_distribuidor_tercerizado_id_seq" OWNED BY distribuidor_tercerizado.id;


--
-- Name: distribuidor_tercerizados_bebidas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE distribuidor_tercerizados_bebidas (
    id integer NOT NULL,
    alimento_id integer NOT NULL,
    distribuidor_tercerizado_id integer NOT NULL
);


ALTER TABLE public.distribuidor_tercerizados_bebidas OWNER TO postgres;

--
-- Name: Distribuidores_Tercerizados_Bebidas_distribuidores_terce_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Distribuidores_Tercerizados_Bebidas_distribuidores_terce_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Distribuidores_Tercerizados_Bebidas_distribuidores_terce_id_seq" OWNER TO postgres;

--
-- Name: Distribuidores_Tercerizados_Bebidas_distribuidores_terce_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Distribuidores_Tercerizados_Bebidas_distribuidores_terce_id_seq" OWNED BY distribuidor_tercerizados_bebidas.id;


--
-- Name: endereco; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE endereco (
    id integer NOT NULL,
    cep integer NOT NULL,
    complemento text NOT NULL,
    numero integer NOT NULL,
    logradouro_id integer NOT NULL
);


ALTER TABLE public.endereco OWNER TO postgres;

--
-- Name: Endereco_endereco_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Endereco_endereco_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Endereco_endereco_id_seq" OWNER TO postgres;

--
-- Name: Endereco_endereco_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Endereco_endereco_id_seq" OWNED BY endereco.id;


--
-- Name: entrega_alimento; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE entrega_alimento (
    id integer NOT NULL,
    quantidade integer NOT NULL,
    alimento_id integer NOT NULL,
    entrega_id integer NOT NULL
);


ALTER TABLE public.entrega_alimento OWNER TO postgres;

--
-- Name: Entrega_Alimento_entrega_alimento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Entrega_Alimento_entrega_alimento_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Entrega_Alimento_entrega_alimento_id_seq" OWNER TO postgres;

--
-- Name: Entrega_Alimento_entrega_alimento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Entrega_Alimento_entrega_alimento_id_seq" OWNED BY entrega_alimento.id;


--
-- Name: entrega; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE entrega (
    id integer NOT NULL,
    data_hora timestamp with time zone NOT NULL,
    destino_id integer NOT NULL,
    veiculo_id integer NOT NULL
);


ALTER TABLE public.entrega OWNER TO postgres;

--
-- Name: Entrega_entrega_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Entrega_entrega_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Entrega_entrega_id_seq" OWNER TO postgres;

--
-- Name: Entrega_entrega_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Entrega_entrega_id_seq" OWNED BY entrega.id;


--
-- Name: estado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE estado (
    id integer NOT NULL,
    nome text NOT NULL,
    sigla text NOT NULL,
    pais_id integer NOT NULL
);


ALTER TABLE public.estado OWNER TO postgres;

--
-- Name: Estado_estado_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Estado_estado_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Estado_estado_id_seq" OWNER TO postgres;

--
-- Name: Estado_estado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Estado_estado_id_seq" OWNED BY estado.id;


--
-- Name: estoque_centro; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE estoque_centro (
    id integer NOT NULL,
    quantidade integer NOT NULL,
    alimento_id integer NOT NULL,
    centro_id integer NOT NULL
);


ALTER TABLE public.estoque_centro OWNER TO postgres;

--
-- Name: Estoque_Centro_estoque_centro_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Estoque_Centro_estoque_centro_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Estoque_Centro_estoque_centro_id_seq" OWNER TO postgres;

--
-- Name: Estoque_Centro_estoque_centro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Estoque_Centro_estoque_centro_id_seq" OWNED BY estoque_centro.id;


--
-- Name: estoque_loja; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE estoque_loja (
    id integer NOT NULL,
    quantida integer NOT NULL,
    alimento_id integer NOT NULL
);


ALTER TABLE public.estoque_loja OWNER TO postgres;

--
-- Name: Estoque_Loja_estoque_loja_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Estoque_Loja_estoque_loja_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Estoque_Loja_estoque_loja_id_seq" OWNER TO postgres;

--
-- Name: Estoque_Loja_estoque_loja_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Estoque_Loja_estoque_loja_id_seq" OWNED BY estoque_loja.id;


--
-- Name: funcionario_loja; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE funcionario_loja (
    id integer NOT NULL,
    funcionario_id integer NOT NULL,
    loja_id integer NOT NULL
);


ALTER TABLE public.funcionario_loja OWNER TO postgres;

--
-- Name: Funcionario_Loja_funcionario_loja_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Funcionario_Loja_funcionario_loja_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Funcionario_Loja_funcionario_loja_id_seq" OWNER TO postgres;

--
-- Name: Funcionario_Loja_funcionario_loja_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Funcionario_Loja_funcionario_loja_id_seq" OWNED BY funcionario_loja.id;


--
-- Name: funcionario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE funcionario (
    id integer NOT NULL,
    nome text NOT NULL,
    telefone integer NOT NULL,
    cpf integer NOT NULL,
    data_nascimento date NOT NULL,
    data_ingresso date NOT NULL,
    salario double precision NOT NULL,
    endereco_id integer NOT NULL
);


ALTER TABLE public.funcionario OWNER TO postgres;

--
-- Name: Funcionario_funcionario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Funcionario_funcionario_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Funcionario_funcionario_id_seq" OWNER TO postgres;

--
-- Name: Funcionario_funcionario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Funcionario_funcionario_id_seq" OWNED BY funcionario.id;


--
-- Name: inventario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE inventario (
    id integer NOT NULL,
    quantidade integer NOT NULL,
    item_de_inventario_id integer NOT NULL
);


ALTER TABLE public.inventario OWNER TO postgres;

--
-- Name: Inventario_inventario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Inventario_inventario_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Inventario_inventario_id_seq" OWNER TO postgres;

--
-- Name: Inventario_inventario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Inventario_inventario_id_seq" OWNED BY inventario.id;


--
-- Name: item_de_inventario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE item_de_inventario (
    id integer NOT NULL,
    nome text NOT NULL
);


ALTER TABLE public.item_de_inventario OWNER TO postgres;

--
-- Name: Item_de_Inventario_item_de_inventario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Item_de_Inventario_item_de_inventario_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Item_de_Inventario_item_de_inventario_id_seq" OWNER TO postgres;

--
-- Name: Item_de_Inventario_item_de_inventario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Item_de_Inventario_item_de_inventario_id_seq" OWNED BY item_de_inventario.id;


--
-- Name: itens_pedido; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE itens_pedido (
    id integer NOT NULL,
    quantidade integer NOT NULL,
    alimento_id integer NOT NULL,
    pedido_id integer NOT NULL
);


ALTER TABLE public.itens_pedido OWNER TO postgres;

--
-- Name: Itens_Pedido_itens_pedido_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Itens_Pedido_itens_pedido_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Itens_Pedido_itens_pedido_id_seq" OWNER TO postgres;

--
-- Name: Itens_Pedido_itens_pedido_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Itens_Pedido_itens_pedido_id_seq" OWNED BY itens_pedido.id;


--
-- Name: logradouro; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE logradouro (
    id integer NOT NULL,
    nome text NOT NULL,
    tipo text NOT NULL,
    cidade_id integer NOT NULL
);


ALTER TABLE public.logradouro OWNER TO postgres;

--
-- Name: Logradouro_logradouro_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Logradouro_logradouro_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Logradouro_logradouro_id_seq" OWNER TO postgres;

--
-- Name: Logradouro_logradouro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Logradouro_logradouro_id_seq" OWNED BY logradouro.id;


--
-- Name: loja; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE loja (
    id integer NOT NULL,
    capacidade integer NOT NULL,
    area double precision NOT NULL,
    franquia boolean NOT NULL,
    cnpj integer NOT NULL,
    endereco_id integer NOT NULL,
    estoque_id integer NOT NULL,
    gerente_id integer NOT NULL,
    inventario_id integer NOT NULL,
    proprietario_id integer NOT NULL
);


ALTER TABLE public.loja OWNER TO postgres;

--
-- Name: Loja_loja_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Loja_loja_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Loja_loja_id_seq" OWNER TO postgres;

--
-- Name: Loja_loja_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Loja_loja_id_seq" OWNED BY loja.id;


--
-- Name: pais; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pais (
    id integer NOT NULL,
    nome text NOT NULL
);


ALTER TABLE public.pais OWNER TO postgres;

--
-- Name: Pais_pais_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Pais_pais_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Pais_pais_id_seq" OWNER TO postgres;

--
-- Name: Pais_pais_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Pais_pais_id_seq" OWNED BY pais.id;


--
-- Name: pedido; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pedido (
    id integer NOT NULL,
    numero_nota_fiscal integer NOT NULL,
    data date NOT NULL,
    total double precision NOT NULL,
    funcionario_id integer NOT NULL,
    pesquisa_id integer NOT NULL
);


ALTER TABLE public.pedido OWNER TO postgres;

--
-- Name: Pedido_pedido_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Pedido_pedido_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Pedido_pedido_id_seq" OWNER TO postgres;

--
-- Name: Pedido_pedido_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Pedido_pedido_id_seq" OWNED BY pedido.id;


--
-- Name: pesquisa; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pesquisa (
    id integer NOT NULL,
    atendimento integer NOT NULL,
    limpeza integer NOT NULL,
    preco integer NOT NULL,
    ambiente integer NOT NULL,
    sugestoes text NOT NULL
);


ALTER TABLE public.pesquisa OWNER TO postgres;

--
-- Name: Pesquisa_pesquisa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Pesquisa_pesquisa_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Pesquisa_pesquisa_id_seq" OWNER TO postgres;

--
-- Name: Pesquisa_pesquisa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Pesquisa_pesquisa_id_seq" OWNED BY pesquisa.id;


--
-- Name: proprietario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE proprietario (
    id integer NOT NULL,
    nome text NOT NULL,
    cpf integer NOT NULL,
    data_nascimento date NOT NULL,
    endereco_id integer NOT NULL
);


ALTER TABLE public.proprietario OWNER TO postgres;

--
-- Name: Proprietario_proprietario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Proprietario_proprietario_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Proprietario_proprietario_id_seq" OWNER TO postgres;

--
-- Name: Proprietario_proprietario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Proprietario_proprietario_id_seq" OWNED BY proprietario.id;


--
-- Name: tipo_de_ingrediente; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tipo_de_ingrediente (
    id integer NOT NULL,
    nome text NOT NULL
);


ALTER TABLE public.tipo_de_ingrediente OWNER TO postgres;

--
-- Name: Tipo_de_Ingrediente_tipo_de_ingrediente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Tipo_de_Ingrediente_tipo_de_ingrediente_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Tipo_de_Ingrediente_tipo_de_ingrediente_id_seq" OWNER TO postgres;

--
-- Name: Tipo_de_Ingrediente_tipo_de_ingrediente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Tipo_de_Ingrediente_tipo_de_ingrediente_id_seq" OWNED BY tipo_de_ingrediente.id;


--
-- Name: veiculo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE veiculo (
    id integer NOT NULL,
    placa text NOT NULL,
    disponibilidade boolean NOT NULL,
    modelo text NOT NULL,
    centro_distribuicao_id integer NOT NULL
);


ALTER TABLE public.veiculo OWNER TO postgres;

--
-- Name: Veiculo_veiculo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Veiculo_veiculo_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Veiculo_veiculo_id_seq" OWNER TO postgres;

--
-- Name: Veiculo_veiculo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Veiculo_veiculo_id_seq" OWNED BY veiculo.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: funcionarioinsatisfatorios; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW funcionarioinsatisfatorios AS
 SELECT f.nome,
    f.cpf,
    pe.atendimento
   FROM funcionario f,
    pesquisa pe,
    pedido p
  WHERE (((f.id = p.funcionario_id) AND (pe.id = p.pesquisa_id)) AND (pe.atendimento < 5));


ALTER TABLE public.funcionarioinsatisfatorios OWNER TO postgres;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY alimento ALTER COLUMN id SET DEFAULT nextval('"Alimento_alimento_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY centro_distribuicao ALTER COLUMN id SET DEFAULT nextval('"Centro_Distribuicao_centro_distribuicao_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cidade ALTER COLUMN id SET DEFAULT nextval('"Cidade_cidade_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY distribuidor_tercerizado ALTER COLUMN id SET DEFAULT nextval('"Distribuidor_Tercerizado_distribuidor_tercerizado_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY distribuidor_tercerizados_bebidas ALTER COLUMN id SET DEFAULT nextval('"Distribuidores_Tercerizados_Bebidas_distribuidores_terce_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY endereco ALTER COLUMN id SET DEFAULT nextval('"Endereco_endereco_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY entrega ALTER COLUMN id SET DEFAULT nextval('"Entrega_entrega_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY entrega_alimento ALTER COLUMN id SET DEFAULT nextval('"Entrega_Alimento_entrega_alimento_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estado ALTER COLUMN id SET DEFAULT nextval('"Estado_estado_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estoque_centro ALTER COLUMN id SET DEFAULT nextval('"Estoque_Centro_estoque_centro_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estoque_loja ALTER COLUMN id SET DEFAULT nextval('"Estoque_Loja_estoque_loja_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY funcionario ALTER COLUMN id SET DEFAULT nextval('"Funcionario_funcionario_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY funcionario_loja ALTER COLUMN id SET DEFAULT nextval('"Funcionario_Loja_funcionario_loja_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY inventario ALTER COLUMN id SET DEFAULT nextval('"Inventario_inventario_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY item_de_inventario ALTER COLUMN id SET DEFAULT nextval('"Item_de_Inventario_item_de_inventario_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY itens_pedido ALTER COLUMN id SET DEFAULT nextval('"Itens_Pedido_itens_pedido_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY logradouro ALTER COLUMN id SET DEFAULT nextval('"Logradouro_logradouro_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY loja ALTER COLUMN id SET DEFAULT nextval('"Loja_loja_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pais ALTER COLUMN id SET DEFAULT nextval('"Pais_pais_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pedido ALTER COLUMN id SET DEFAULT nextval('"Pedido_pedido_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pesquisa ALTER COLUMN id SET DEFAULT nextval('"Pesquisa_pesquisa_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY proprietario ALTER COLUMN id SET DEFAULT nextval('"Proprietario_proprietario_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_de_ingrediente ALTER COLUMN id SET DEFAULT nextval('"Tipo_de_Ingrediente_tipo_de_ingrediente_id_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY veiculo ALTER COLUMN id SET DEFAULT nextval('"Veiculo_veiculo_id_seq"'::regclass);


--
-- Name: Alimento_alimento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Alimento_alimento_id_seq"', 1, false);


--
-- Name: Centro_Distribuicao_centro_distribuicao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Centro_Distribuicao_centro_distribuicao_id_seq"', 1, false);


--
-- Name: Cidade_cidade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Cidade_cidade_id_seq"', 1, false);


--
-- Name: Distribuidor_Tercerizado_distribuidor_tercerizado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Distribuidor_Tercerizado_distribuidor_tercerizado_id_seq"', 1, false);


--
-- Name: Distribuidores_Tercerizados_Bebidas_distribuidores_terce_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Distribuidores_Tercerizados_Bebidas_distribuidores_terce_id_seq"', 1, false);


--
-- Name: Endereco_endereco_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Endereco_endereco_id_seq"', 1, false);


--
-- Name: Entrega_Alimento_entrega_alimento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Entrega_Alimento_entrega_alimento_id_seq"', 1, false);


--
-- Name: Entrega_entrega_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Entrega_entrega_id_seq"', 1, false);


--
-- Name: Estado_estado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Estado_estado_id_seq"', 1, false);


--
-- Name: Estoque_Centro_estoque_centro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Estoque_Centro_estoque_centro_id_seq"', 1, false);


--
-- Name: Estoque_Loja_estoque_loja_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Estoque_Loja_estoque_loja_id_seq"', 1, false);


--
-- Name: Funcionario_Loja_funcionario_loja_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Funcionario_Loja_funcionario_loja_id_seq"', 1, false);


--
-- Name: Funcionario_funcionario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Funcionario_funcionario_id_seq"', 1, false);


--
-- Name: Inventario_inventario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Inventario_inventario_id_seq"', 1, false);


--
-- Name: Item_de_Inventario_item_de_inventario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Item_de_Inventario_item_de_inventario_id_seq"', 1, false);


--
-- Name: Itens_Pedido_itens_pedido_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Itens_Pedido_itens_pedido_id_seq"', 1, false);


--
-- Name: Logradouro_logradouro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Logradouro_logradouro_id_seq"', 1, false);


--
-- Name: Loja_loja_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Loja_loja_id_seq"', 1, false);


--
-- Name: Pais_pais_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Pais_pais_id_seq"', 1, false);


--
-- Name: Pedido_pedido_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Pedido_pedido_id_seq"', 1, false);


--
-- Name: Pesquisa_pesquisa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Pesquisa_pesquisa_id_seq"', 1, false);


--
-- Name: Proprietario_proprietario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Proprietario_proprietario_id_seq"', 1, false);


--
-- Name: Tipo_de_Ingrediente_tipo_de_ingrediente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Tipo_de_Ingrediente_tipo_de_ingrediente_id_seq"', 1, false);


--
-- Name: Veiculo_veiculo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Veiculo_veiculo_id_seq"', 1, false);


--
-- Data for Name: alimento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY alimento (id, nome, proteinas, carboidratos, gorduras, calorias, preco, ingrediente, recheiro, marca, tipo_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add permission	3	add_permission
8	Can change permission	3	change_permission
9	Can delete permission	3	delete_permission
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add pais	7	add_pais
20	Can change pais	7	change_pais
21	Can delete pais	7	delete_pais
22	Can add alimento	8	add_alimento
23	Can change alimento	8	change_alimento
24	Can delete alimento	8	delete_alimento
25	Can add estoque_ centro	9	add_estoque_centro
26	Can change estoque_ centro	9	change_estoque_centro
27	Can delete estoque_ centro	9	delete_estoque_centro
28	Can add centro_ distribuicao	10	add_centro_distribuicao
29	Can change centro_ distribuicao	10	change_centro_distribuicao
30	Can delete centro_ distribuicao	10	delete_centro_distribuicao
31	Can add cidade	11	add_cidade
32	Can change cidade	11	change_cidade
33	Can delete cidade	11	delete_cidade
34	Can add distribuidor_ tercerizado	12	add_distribuidor_tercerizado
35	Can change distribuidor_ tercerizado	12	change_distribuidor_tercerizado
36	Can delete distribuidor_ tercerizado	12	delete_distribuidor_tercerizado
37	Can add endereco	13	add_endereco
38	Can change endereco	13	change_endereco
39	Can delete endereco	13	delete_endereco
40	Can add entrega	14	add_entrega
41	Can change entrega	14	change_entrega
42	Can delete entrega	14	delete_entrega
43	Can add entrega_ alimento	15	add_entrega_alimento
44	Can change entrega_ alimento	15	change_entrega_alimento
45	Can delete entrega_ alimento	15	delete_entrega_alimento
46	Can add estado	16	add_estado
47	Can change estado	16	change_estado
48	Can delete estado	16	delete_estado
49	Can add estoque_ loja	17	add_estoque_loja
50	Can change estoque_ loja	17	change_estoque_loja
51	Can delete estoque_ loja	17	delete_estoque_loja
52	Can add funcionario	18	add_funcionario
53	Can change funcionario	18	change_funcionario
54	Can delete funcionario	18	delete_funcionario
55	Can add inventario	19	add_inventario
56	Can change inventario	19	change_inventario
57	Can delete inventario	19	delete_inventario
58	Can add item_de_ inventario	20	add_item_de_inventario
59	Can change item_de_ inventario	20	change_item_de_inventario
60	Can delete item_de_ inventario	20	delete_item_de_inventario
61	Can add itens_ pedido	21	add_itens_pedido
62	Can change itens_ pedido	21	change_itens_pedido
63	Can delete itens_ pedido	21	delete_itens_pedido
64	Can add logradouro	22	add_logradouro
65	Can change logradouro	22	change_logradouro
66	Can delete logradouro	22	delete_logradouro
67	Can add loja	23	add_loja
68	Can change loja	23	change_loja
69	Can delete loja	23	delete_loja
70	Can add pedido	24	add_pedido
71	Can change pedido	24	change_pedido
72	Can delete pedido	24	delete_pedido
73	Can add pesquisa	25	add_pesquisa
74	Can change pesquisa	25	change_pesquisa
75	Can delete pesquisa	25	delete_pesquisa
76	Can add proprietario	26	add_proprietario
77	Can change proprietario	26	change_proprietario
78	Can delete proprietario	26	delete_proprietario
79	Can add tipo_de_ ingrediente	27	add_tipo_de_ingrediente
80	Can change tipo_de_ ingrediente	27	change_tipo_de_ingrediente
81	Can delete tipo_de_ ingrediente	27	delete_tipo_de_ingrediente
82	Can add veiculo	28	add_veiculo
83	Can change veiculo	28	change_veiculo
84	Can delete veiculo	28	delete_veiculo
85	Can add funcionario_ loja	29	add_funcionario_loja
86	Can change funcionario_ loja	29	change_funcionario_loja
87	Can delete funcionario_ loja	29	delete_funcionario_loja
88	Can add distribuidores_ tercerizados_ bebidas	30	add_distribuidores_tercerizados_bebidas
89	Can change distribuidores_ tercerizados_ bebidas	30	change_distribuidores_tercerizados_bebidas
90	Can delete distribuidores_ tercerizados_ bebidas	30	delete_distribuidores_tercerizados_bebidas
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 90, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, false);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: centro_distribuicao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY centro_distribuicao (id, email, nome, telefone, endereco_id) FROM stdin;
\.


--
-- Data for Name: cidade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cidade (id, nome, estado_id) FROM stdin;
\.


--
-- Data for Name: distribuidor_tercerizado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY distribuidor_tercerizado (id, nome, contato) FROM stdin;
\.


--
-- Data for Name: distribuidor_tercerizados_bebidas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY distribuidor_tercerizados_bebidas (id, alimento_id, distribuidor_tercerizado_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	group
3	auth	permission
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	Pais	pais
8	Alimento	alimento
9	Estoque_Centro	estoque_centro
10	Centro_Distribuicao	centro_distribuicao
11	Cidade	cidade
12	Distribuidor_Tercerizado	distribuidor_tercerizado
13	Endereco	endereco
14	Entrega	entrega
15	Entrega_Alimento	entrega_alimento
16	Estado	estado
17	Estoque_Loja	estoque_loja
18	Funcionario	funcionario
19	Inventario	inventario
20	Item_de_Inventario	item_de_inventario
21	Itens_Pedido	itens_pedido
22	Logradouro	logradouro
23	Loja	loja
24	Pedido	pedido
25	Pesquisa	pesquisa
26	Proprietario	proprietario
27	Tipo_de_Ingrediente	tipo_de_ingrediente
28	Veiculo	veiculo
29	Funcionario_Loja	funcionario_loja
30	Distribuidores_Tercerizados_Bebidas	distribuidores_tercerizados_bebidas
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 30, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	Tipo_de_Ingrediente	0001_initial	2016-11-24 12:54:33.691614-02
2	Alimento	0001_initial	2016-11-24 12:54:33.701106-02
3	Alimento	0002_alimento_tipo	2016-11-24 12:54:33.713343-02
4	Alimento	0003_auto_20161124_0300	2016-11-24 12:54:33.780154-02
5	Cidade	0001_initial	2016-11-24 12:54:33.791613-02
6	Logradouro	0001_initial	2016-11-24 12:54:33.804697-02
7	Endereco	0001_initial	2016-11-24 12:54:33.822475-02
8	Centro_Distribuicao	0001_initial	2016-11-24 12:54:33.836293-02
9	Centro_Distribuicao	0002_centro_distribuicao_endereco	2016-11-24 12:54:33.849451-02
10	Centro_Distribuicao	0003_auto_20161124_0300	2016-11-24 12:54:33.883076-02
11	Pais	0001_initial	2016-11-24 12:54:33.893964-02
12	Estado	0001_initial	2016-11-24 12:54:33.907808-02
13	Cidade	0002_cidade_estado	2016-11-24 12:54:33.921385-02
14	Cidade	0003_auto_20161124_0300	2016-11-24 12:54:33.954034-02
15	Distribuidor_Tercerizado	0001_initial	2016-11-24 12:54:33.962503-02
16	Distribuidores_Tercerizados_Bebidas	0001_initial	2016-11-24 12:54:33.980534-02
17	Endereco	0002_auto_20161124_0300	2016-11-24 12:54:34.027983-02
18	Veiculo	0001_initial	2016-11-24 12:54:34.044512-02
19	Proprietario	0001_initial	2016-11-24 12:54:34.06794-02
20	Item_de_Inventario	0001_initial	2016-11-24 12:54:34.078615-02
21	Inventario	0001_initial	2016-11-24 12:54:34.09329-02
22	Funcionario	0001_initial	2016-11-24 12:54:34.115862-02
23	Estoque_Loja	0001_initial	2016-11-24 12:54:34.134878-02
24	Loja	0001_initial	2016-11-24 12:54:34.173477-02
25	Entrega	0001_initial	2016-11-24 12:54:34.213237-02
26	Entrega	0002_auto_20161124_0300	2016-11-24 12:54:34.300164-02
27	Entrega_Alimento	0001_initial	2016-11-24 12:54:34.326236-02
28	Entrega_Alimento	0002_auto_20161124_0300	2016-11-24 12:54:34.41689-02
29	Estado	0002_auto_20161124_0300	2016-11-24 12:54:34.461373-02
30	Estoque_Centro	0001_initial	2016-11-24 12:54:34.491962-02
31	Estoque_Centro	0002_auto_20161124_0300	2016-11-24 12:54:34.588024-02
32	Estoque_Loja	0002_auto_20161124_0300	2016-11-24 12:54:34.631063-02
33	Funcionario	0002_auto_20161124_0300	2016-11-24 12:54:34.675686-02
34	Loja	0002_auto_20161124_0300	2016-11-24 12:54:34.933369-02
35	Funcionario_Loja	0001_initial	2016-11-24 12:54:34.965806-02
36	Inventario	0002_auto_20161124_0300	2016-11-24 12:54:35.033933-02
37	Pesquisa	0001_initial	2016-11-24 12:54:35.047029-02
38	Pedido	0001_initial	2016-11-24 12:54:35.099856-02
39	Itens_Pedido	0001_initial	2016-11-24 12:54:35.146874-02
40	Itens_Pedido	0002_auto_20161124_0300	2016-11-24 12:54:35.225068-02
41	Logradouro	0002_auto_20161124_0300	2016-11-24 12:54:35.291617-02
42	Pedido	0002_auto_20161124_0300	2016-11-24 12:54:35.406802-02
43	Proprietario	0002_auto_20161124_0300	2016-11-24 12:54:35.458676-02
44	Veiculo	0002_auto_20161124_0300	2016-11-24 12:54:35.552014-02
45	contenttypes	0001_initial	2016-11-24 12:54:35.566275-02
46	auth	0001_initial	2016-11-24 12:54:35.663245-02
47	admin	0001_initial	2016-11-24 12:54:35.7094-02
48	admin	0002_logentry_remove_auto_add	2016-11-24 12:54:35.733424-02
49	contenttypes	0002_remove_content_type_name	2016-11-24 12:54:35.771093-02
50	auth	0002_alter_permission_name_max_length	2016-11-24 12:54:35.787452-02
51	auth	0003_alter_user_email_max_length	2016-11-24 12:54:35.807713-02
52	auth	0004_alter_user_username_opts	2016-11-24 12:54:35.820299-02
53	auth	0005_alter_user_last_login_null	2016-11-24 12:54:35.834777-02
54	auth	0006_require_contenttypes_0002	2016-11-24 12:54:35.837427-02
55	auth	0007_alter_validators_add_error_messages	2016-11-24 12:54:35.85406-02
56	auth	0008_alter_user_username_max_length	2016-11-24 12:54:35.874033-02
57	sessions	0001_initial	2016-11-24 12:54:35.888692-02
58	Pesquisa	0002_auto_20161124_1501	2016-11-24 13:01:24.71291-02
59	Alimento	0004_auto_20161124_1506	2016-11-24 13:06:06.222604-02
60	Centro_Distribuicao	0004_auto_20161124_1506	2016-11-24 13:06:06.263035-02
61	Cidade	0004_auto_20161124_1506	2016-11-24 13:06:06.287582-02
62	Distribuidor_Tercerizado	0002_auto_20161124_1506	2016-11-24 13:06:06.317562-02
63	Distribuidores_Tercerizados_Bebidas	0002_auto_20161124_1506	2016-11-24 13:06:06.341568-02
64	Endereco	0003_auto_20161124_1506	2016-11-24 13:06:06.373995-02
65	Entrega	0003_auto_20161124_1506	2016-11-24 13:06:06.398507-02
66	Entrega_Alimento	0003_auto_20161124_1506	2016-11-24 13:06:06.430212-02
67	Estado	0003_auto_20161124_1506	2016-11-24 13:06:06.461777-02
68	Estoque_Centro	0003_auto_20161124_1506	2016-11-24 13:06:06.490971-02
69	Estoque_Loja	0003_auto_20161124_1506	2016-11-24 13:06:06.545965-02
70	Funcionario	0003_auto_20161124_1506	2016-11-24 13:06:06.586433-02
71	Funcionario_Loja	0002_auto_20161124_1506	2016-11-24 13:06:06.631033-02
72	Inventario	0003_auto_20161124_1506	2016-11-24 13:06:06.663545-02
73	Item_de_Inventario	0002_auto_20161124_1506	2016-11-24 13:06:06.743717-02
74	Itens_Pedido	0003_auto_20161124_1506	2016-11-24 13:06:06.815238-02
75	Logradouro	0003_auto_20161124_1506	2016-11-24 13:06:06.85684-02
76	Loja	0003_auto_20161124_1506	2016-11-24 13:06:06.930607-02
77	Pais	0002_auto_20161124_1506	2016-11-24 13:06:06.991925-02
78	Pedido	0003_auto_20161124_1506	2016-11-24 13:06:07.057907-02
79	Proprietario	0003_auto_20161124_1506	2016-11-24 13:06:07.106851-02
80	Tipo_de_Ingrediente	0002_auto_20161124_1506	2016-11-24 13:06:07.149087-02
81	Veiculo	0003_auto_20161124_1506	2016-11-24 13:06:07.196139-02
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 81, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: endereco; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY endereco (id, cep, complemento, numero, logradouro_id) FROM stdin;
\.


--
-- Data for Name: entrega; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY entrega (id, data_hora, destino_id, veiculo_id) FROM stdin;
\.


--
-- Data for Name: entrega_alimento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY entrega_alimento (id, quantidade, alimento_id, entrega_id) FROM stdin;
\.


--
-- Data for Name: estado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY estado (id, nome, sigla, pais_id) FROM stdin;
\.


--
-- Data for Name: estoque_centro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY estoque_centro (id, quantidade, alimento_id, centro_id) FROM stdin;
\.


--
-- Data for Name: estoque_loja; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY estoque_loja (id, quantida, alimento_id) FROM stdin;
\.


--
-- Data for Name: funcionario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY funcionario (id, nome, telefone, cpf, data_nascimento, data_ingresso, salario, endereco_id) FROM stdin;
\.


--
-- Data for Name: funcionario_loja; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY funcionario_loja (id, funcionario_id, loja_id) FROM stdin;
\.


--
-- Data for Name: inventario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY inventario (id, quantidade, item_de_inventario_id) FROM stdin;
\.


--
-- Data for Name: item_de_inventario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY item_de_inventario (id, nome) FROM stdin;
\.


--
-- Data for Name: itens_pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY itens_pedido (id, quantidade, alimento_id, pedido_id) FROM stdin;
\.


--
-- Data for Name: logradouro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY logradouro (id, nome, tipo, cidade_id) FROM stdin;
\.


--
-- Data for Name: loja; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY loja (id, capacidade, area, franquia, cnpj, endereco_id, estoque_id, gerente_id, inventario_id, proprietario_id) FROM stdin;
\.


--
-- Data for Name: pais; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pais (id, nome) FROM stdin;
\.


--
-- Data for Name: pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pedido (id, numero_nota_fiscal, data, total, funcionario_id, pesquisa_id) FROM stdin;
\.


--
-- Data for Name: pesquisa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pesquisa (id, atendimento, limpeza, preco, ambiente, sugestoes) FROM stdin;
\.


--
-- Data for Name: proprietario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY proprietario (id, nome, cpf, data_nascimento, endereco_id) FROM stdin;
\.


--
-- Data for Name: tipo_de_ingrediente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipo_de_ingrediente (id, nome) FROM stdin;
\.


--
-- Data for Name: veiculo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY veiculo (id, placa, disponibilidade, modelo, centro_distribuicao_id) FROM stdin;
\.


--
-- Name: Alimento_alimento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY alimento
    ADD CONSTRAINT "Alimento_alimento_pkey" PRIMARY KEY (id);


--
-- Name: Centro_Distribuicao_centro_distribuicao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY centro_distribuicao
    ADD CONSTRAINT "Centro_Distribuicao_centro_distribuicao_pkey" PRIMARY KEY (id);


--
-- Name: Cidade_cidade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cidade
    ADD CONSTRAINT "Cidade_cidade_pkey" PRIMARY KEY (id);


--
-- Name: Distribuidor_Tercerizado_distribuidor_tercerizado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY distribuidor_tercerizado
    ADD CONSTRAINT "Distribuidor_Tercerizado_distribuidor_tercerizado_pkey" PRIMARY KEY (id);


--
-- Name: Distribuidores_Tercerizados_Bebidas_distribuidores_terceri_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY distribuidor_tercerizados_bebidas
    ADD CONSTRAINT "Distribuidores_Tercerizados_Bebidas_distribuidores_terceri_pkey" PRIMARY KEY (id);


--
-- Name: Endereco_endereco_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY endereco
    ADD CONSTRAINT "Endereco_endereco_pkey" PRIMARY KEY (id);


--
-- Name: Entrega_Alimento_entrega_alimento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY entrega_alimento
    ADD CONSTRAINT "Entrega_Alimento_entrega_alimento_pkey" PRIMARY KEY (id);


--
-- Name: Entrega_entrega_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY entrega
    ADD CONSTRAINT "Entrega_entrega_pkey" PRIMARY KEY (id);


--
-- Name: Estado_estado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY estado
    ADD CONSTRAINT "Estado_estado_pkey" PRIMARY KEY (id);


--
-- Name: Estoque_Centro_estoque_centro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY estoque_centro
    ADD CONSTRAINT "Estoque_Centro_estoque_centro_pkey" PRIMARY KEY (id);


--
-- Name: Estoque_Loja_estoque_loja_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY estoque_loja
    ADD CONSTRAINT "Estoque_Loja_estoque_loja_pkey" PRIMARY KEY (id);


--
-- Name: Funcionario_Loja_funcionario_loja_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY funcionario_loja
    ADD CONSTRAINT "Funcionario_Loja_funcionario_loja_pkey" PRIMARY KEY (id);


--
-- Name: Funcionario_funcionario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY funcionario
    ADD CONSTRAINT "Funcionario_funcionario_pkey" PRIMARY KEY (id);


--
-- Name: Inventario_inventario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY inventario
    ADD CONSTRAINT "Inventario_inventario_pkey" PRIMARY KEY (id);


--
-- Name: Item_de_Inventario_item_de_inventario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY item_de_inventario
    ADD CONSTRAINT "Item_de_Inventario_item_de_inventario_pkey" PRIMARY KEY (id);


--
-- Name: Itens_Pedido_itens_pedido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY itens_pedido
    ADD CONSTRAINT "Itens_Pedido_itens_pedido_pkey" PRIMARY KEY (id);


--
-- Name: Logradouro_logradouro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY logradouro
    ADD CONSTRAINT "Logradouro_logradouro_pkey" PRIMARY KEY (id);


--
-- Name: Loja_loja_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY loja
    ADD CONSTRAINT "Loja_loja_pkey" PRIMARY KEY (id);


--
-- Name: Pais_pais_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pais
    ADD CONSTRAINT "Pais_pais_pkey" PRIMARY KEY (id);


--
-- Name: Pedido_pedido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pedido
    ADD CONSTRAINT "Pedido_pedido_pkey" PRIMARY KEY (id);


--
-- Name: Pesquisa_pesquisa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pesquisa
    ADD CONSTRAINT "Pesquisa_pesquisa_pkey" PRIMARY KEY (id);


--
-- Name: Proprietario_proprietario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY proprietario
    ADD CONSTRAINT "Proprietario_proprietario_pkey" PRIMARY KEY (id);


--
-- Name: Tipo_de_Ingrediente_tipo_de_ingrediente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tipo_de_ingrediente
    ADD CONSTRAINT "Tipo_de_Ingrediente_tipo_de_ingrediente_pkey" PRIMARY KEY (id);


--
-- Name: Veiculo_veiculo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY veiculo
    ADD CONSTRAINT "Veiculo_veiculo_pkey" PRIMARY KEY (id);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: Alimento_alimento_d3c0c18a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Alimento_alimento_d3c0c18a" ON alimento USING btree (tipo_id);


--
-- Name: Centro_Distribuicao_centro_distribuicao_5f6f0b92; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Centro_Distribuicao_centro_distribuicao_5f6f0b92" ON centro_distribuicao USING btree (endereco_id);


--
-- Name: Cidade_cidade_2c189993; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Cidade_cidade_2c189993" ON cidade USING btree (estado_id);


--
-- Name: Distribuidores_Tercerizados_Bebidas_distribuidores_terceriz1682; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Distribuidores_Tercerizados_Bebidas_distribuidores_terceriz1682" ON distribuidor_tercerizados_bebidas USING btree (distribuidor_tercerizado_id);


--
-- Name: Distribuidores_Tercerizados_Bebidas_distribuidores_terceriz29e5; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Distribuidores_Tercerizados_Bebidas_distribuidores_terceriz29e5" ON distribuidor_tercerizados_bebidas USING btree (alimento_id);


--
-- Name: Endereco_endereco_f14dec3a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Endereco_endereco_f14dec3a" ON endereco USING btree (logradouro_id);


--
-- Name: Entrega_Alimento_entrega_alimento_04cf550a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Entrega_Alimento_entrega_alimento_04cf550a" ON entrega_alimento USING btree (alimento_id);


--
-- Name: Entrega_Alimento_entrega_alimento_1be422ad; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Entrega_Alimento_entrega_alimento_1be422ad" ON entrega_alimento USING btree (entrega_id);


--
-- Name: Entrega_entrega_39949085; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Entrega_entrega_39949085" ON entrega USING btree (destino_id);


--
-- Name: Entrega_entrega_f57876b5; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Entrega_entrega_f57876b5" ON entrega USING btree (veiculo_id);


--
-- Name: Estado_estado_847ec16e; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Estado_estado_847ec16e" ON estado USING btree (pais_id);


--
-- Name: Estoque_Centro_estoque_centro_04cf550a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Estoque_Centro_estoque_centro_04cf550a" ON estoque_centro USING btree (alimento_id);


--
-- Name: Estoque_Centro_estoque_centro_dd33f329; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Estoque_Centro_estoque_centro_dd33f329" ON estoque_centro USING btree (centro_id);


--
-- Name: Estoque_Loja_estoque_loja_04cf550a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Estoque_Loja_estoque_loja_04cf550a" ON estoque_loja USING btree (alimento_id);


--
-- Name: Funcionario_Loja_funcionario_loja_d133041f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Funcionario_Loja_funcionario_loja_d133041f" ON funcionario_loja USING btree (loja_id);


--
-- Name: Funcionario_Loja_funcionario_loja_fe820ca7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Funcionario_Loja_funcionario_loja_fe820ca7" ON funcionario_loja USING btree (funcionario_id);


--
-- Name: Funcionario_funcionario_5f6f0b92; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Funcionario_funcionario_5f6f0b92" ON funcionario USING btree (endereco_id);


--
-- Name: Inventario_inventario_ab736f6c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Inventario_inventario_ab736f6c" ON inventario USING btree (item_de_inventario_id);


--
-- Name: Itens_Pedido_itens_pedido_04cf550a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Itens_Pedido_itens_pedido_04cf550a" ON itens_pedido USING btree (alimento_id);


--
-- Name: Itens_Pedido_itens_pedido_8253d097; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Itens_Pedido_itens_pedido_8253d097" ON itens_pedido USING btree (pedido_id);


--
-- Name: Logradouro_logradouro_f67415b5; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Logradouro_logradouro_f67415b5" ON logradouro USING btree (cidade_id);


--
-- Name: Loja_loja_5f6f0b92; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Loja_loja_5f6f0b92" ON loja USING btree (endereco_id);


--
-- Name: Loja_loja_a6deffcf; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Loja_loja_a6deffcf" ON loja USING btree (estoque_id);


--
-- Name: Loja_loja_bb375fe6; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Loja_loja_bb375fe6" ON loja USING btree (gerente_id);


--
-- Name: Loja_loja_d93e20e4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Loja_loja_d93e20e4" ON loja USING btree (proprietario_id);


--
-- Name: Loja_loja_f6bd501b; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Loja_loja_f6bd501b" ON loja USING btree (inventario_id);


--
-- Name: Pedido_pedido_ec92c07c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Pedido_pedido_ec92c07c" ON pedido USING btree (pesquisa_id);


--
-- Name: Pedido_pedido_fe820ca7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Pedido_pedido_fe820ca7" ON pedido USING btree (funcionario_id);


--
-- Name: Proprietario_proprietario_5f6f0b92; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Proprietario_proprietario_5f6f0b92" ON proprietario USING btree (endereco_id);


--
-- Name: Veiculo_veiculo_0e019dff; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX "Veiculo_veiculo_0e019dff" ON veiculo USING btree (centro_distribuicao_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: Centro_Distribuica_endereco_id_c79cf294_fk_Endereco_endereco_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY centro_distribuicao
    ADD CONSTRAINT "Centro_Distribuica_endereco_id_c79cf294_fk_Endereco_endereco_id" FOREIGN KEY (endereco_id) REFERENCES endereco(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Cidade_cidade_estado_id_81c235ea_fk_Estado_estado_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cidade
    ADD CONSTRAINT "Cidade_cidade_estado_id_81c235ea_fk_Estado_estado_id" FOREIGN KEY (estado_id) REFERENCES estado(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: D17032493f7d487f2726715d232c809f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estoque_centro
    ADD CONSTRAINT "D17032493f7d487f2726715d232c809f" FOREIGN KEY (centro_id) REFERENCES centro_distribuicao(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: D1c3d77ec8bcf5365d0fa9606eecbf44; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY inventario
    ADD CONSTRAINT "D1c3d77ec8bcf5365d0fa9606eecbf44" FOREIGN KEY (item_de_inventario_id) REFERENCES item_de_inventario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: D5036f712c28da0a4f01813c50f905cb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY veiculo
    ADD CONSTRAINT "D5036f712c28da0a4f01813c50f905cb" FOREIGN KEY (centro_distribuicao_id) REFERENCES centro_distribuicao(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Distribuidores_Ter_alimento_id_ddc7de22_fk_Alimento_alimento_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY distribuidor_tercerizados_bebidas
    ADD CONSTRAINT "Distribuidores_Ter_alimento_id_ddc7de22_fk_Alimento_alimento_id" FOREIGN KEY (alimento_id) REFERENCES alimento(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Endereco_end_logradouro_id_2691443f_fk_Logradouro_logradouro_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY endereco
    ADD CONSTRAINT "Endereco_end_logradouro_id_2691443f_fk_Logradouro_logradouro_id" FOREIGN KEY (logradouro_id) REFERENCES logradouro(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Entrega_Alimento_e_alimento_id_9d07d395_fk_Alimento_alimento_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY entrega_alimento
    ADD CONSTRAINT "Entrega_Alimento_e_alimento_id_9d07d395_fk_Alimento_alimento_id" FOREIGN KEY (alimento_id) REFERENCES alimento(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Entrega_Alimento_entr_entrega_id_431298f5_fk_Entrega_entrega_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY entrega_alimento
    ADD CONSTRAINT "Entrega_Alimento_entr_entrega_id_431298f5_fk_Entrega_entrega_id" FOREIGN KEY (entrega_id) REFERENCES entrega(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Entrega_entrega_destino_id_bdf46165_fk_Loja_loja_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY entrega
    ADD CONSTRAINT "Entrega_entrega_destino_id_bdf46165_fk_Loja_loja_id" FOREIGN KEY (destino_id) REFERENCES loja(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Entrega_entrega_veiculo_id_1e238790_fk_Veiculo_veiculo_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY entrega
    ADD CONSTRAINT "Entrega_entrega_veiculo_id_1e238790_fk_Veiculo_veiculo_id" FOREIGN KEY (veiculo_id) REFERENCES veiculo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Estado_estado_pais_id_d0eb2689_fk_Pais_pais_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estado
    ADD CONSTRAINT "Estado_estado_pais_id_d0eb2689_fk_Pais_pais_id" FOREIGN KEY (pais_id) REFERENCES pais(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Estoque_Centro_est_alimento_id_e7416766_fk_Alimento_alimento_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estoque_centro
    ADD CONSTRAINT "Estoque_Centro_est_alimento_id_e7416766_fk_Alimento_alimento_id" FOREIGN KEY (alimento_id) REFERENCES alimento(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Estoque_Loja_estoq_alimento_id_67ab796f_fk_Alimento_alimento_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estoque_loja
    ADD CONSTRAINT "Estoque_Loja_estoq_alimento_id_67ab796f_fk_Alimento_alimento_id" FOREIGN KEY (alimento_id) REFERENCES alimento(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Funcionar_funcionario_id_bb7ed847_fk_Funcionario_funcionario_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY funcionario_loja
    ADD CONSTRAINT "Funcionar_funcionario_id_bb7ed847_fk_Funcionario_funcionario_id" FOREIGN KEY (funcionario_id) REFERENCES funcionario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Funcionario_Loja_funcionario_l_loja_id_20c04e33_fk_Loja_loja_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY funcionario_loja
    ADD CONSTRAINT "Funcionario_Loja_funcionario_l_loja_id_20c04e33_fk_Loja_loja_id" FOREIGN KEY (loja_id) REFERENCES loja(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Funcionario_funcio_endereco_id_d4c91581_fk_Endereco_endereco_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY funcionario
    ADD CONSTRAINT "Funcionario_funcio_endereco_id_d4c91581_fk_Endereco_endereco_id" FOREIGN KEY (endereco_id) REFERENCES endereco(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Itens_Pedido_itens_alimento_id_7f2a23c3_fk_Alimento_alimento_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY itens_pedido
    ADD CONSTRAINT "Itens_Pedido_itens_alimento_id_7f2a23c3_fk_Alimento_alimento_id" FOREIGN KEY (alimento_id) REFERENCES alimento(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Itens_Pedido_itens_pedid_pedido_id_5de1f7e7_fk_Pedido_pedido_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY itens_pedido
    ADD CONSTRAINT "Itens_Pedido_itens_pedid_pedido_id_5de1f7e7_fk_Pedido_pedido_id" FOREIGN KEY (pedido_id) REFERENCES pedido(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Logradouro_logradouro_cidade_id_088860fb_fk_Cidade_cidade_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY logradouro
    ADD CONSTRAINT "Logradouro_logradouro_cidade_id_088860fb_fk_Cidade_cidade_id" FOREIGN KEY (cidade_id) REFERENCES cidade(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Loja_l_proprietario_id_dab425cb_fk_Proprietario_proprietario_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY loja
    ADD CONSTRAINT "Loja_l_proprietario_id_dab425cb_fk_Proprietario_proprietario_id" FOREIGN KEY (proprietario_id) REFERENCES proprietario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Loja_loja_endereco_id_58add166_fk_Endereco_endereco_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY loja
    ADD CONSTRAINT "Loja_loja_endereco_id_58add166_fk_Endereco_endereco_id" FOREIGN KEY (endereco_id) REFERENCES endereco(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Loja_loja_estoque_id_de9da6b7_fk_Estoque_Loja_estoque_loja_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY loja
    ADD CONSTRAINT "Loja_loja_estoque_id_de9da6b7_fk_Estoque_Loja_estoque_loja_id" FOREIGN KEY (estoque_id) REFERENCES estoque_loja(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Loja_loja_gerente_id_97cb23ab_fk_Funcionario_funcionario_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY loja
    ADD CONSTRAINT "Loja_loja_gerente_id_97cb23ab_fk_Funcionario_funcionario_id" FOREIGN KEY (gerente_id) REFERENCES funcionario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Loja_loja_inventario_id_b603f02a_fk_Inventario_inventario_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY loja
    ADD CONSTRAINT "Loja_loja_inventario_id_b603f02a_fk_Inventario_inventario_id" FOREIGN KEY (inventario_id) REFERENCES inventario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Pedido_pe_funcionario_id_922bfec4_fk_Funcionario_funcionario_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pedido
    ADD CONSTRAINT "Pedido_pe_funcionario_id_922bfec4_fk_Funcionario_funcionario_id" FOREIGN KEY (funcionario_id) REFERENCES funcionario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Pedido_pedido_pesquisa_id_f10ae4af_fk_Pesquisa_pesquisa_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pedido
    ADD CONSTRAINT "Pedido_pedido_pesquisa_id_f10ae4af_fk_Pesquisa_pesquisa_id" FOREIGN KEY (pesquisa_id) REFERENCES pesquisa(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Proprietario_propr_endereco_id_1212468b_fk_Endereco_endereco_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY proprietario
    ADD CONSTRAINT "Proprietario_propr_endereco_id_1212468b_fk_Endereco_endereco_id" FOREIGN KEY (endereco_id) REFERENCES endereco(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: a379324442d4c32c1b03f841a2d8ebba; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY distribuidor_tercerizados_bebidas
    ADD CONSTRAINT a379324442d4c32c1b03f841a2d8ebba FOREIGN KEY (distribuidor_tercerizado_id) REFERENCES distribuidor_tercerizado(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tipo_id_05ba7d04_fk_Tipo_de_Ingrediente_tipo_de_ingrediente_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY alimento
    ADD CONSTRAINT "tipo_id_05ba7d04_fk_Tipo_de_Ingrediente_tipo_de_ingrediente_id" FOREIGN KEY (tipo_id) REFERENCES tipo_de_ingrediente(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: lucasfcosta
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM lucasfcosta;
GRANT ALL ON SCHEMA public TO lucasfcosta;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

