class ProdutosController < ApplicationController
    def index
        @produtos_nome = Produto.all.order(:nome).limit 5
        @produtos_preco = Produto.all.order(:preco).limit 2
    end
end