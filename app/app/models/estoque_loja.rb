class EstoqueLoja < ApplicationRecord
  belongs_to :alimento

  validates_presence_of :quantidade, :alimento
end
