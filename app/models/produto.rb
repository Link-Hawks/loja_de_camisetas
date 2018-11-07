class Produto < ApplicationRecord
    validates :descricao, :quantidade, :preco, presence: true
    validates :nome, length: {minimum: 5}
end
