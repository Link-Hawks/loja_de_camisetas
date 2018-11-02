class ProdutosController < ApplicationController
    def index
        @produtos_nome = Produto.all.limit 15
        @produtos_preco = Produto.all.order(:preco).limit 2
    end

    def create
        valores = params.require(:produto).permit(:nome,:descricao,:quantidade,:preco)
        @produto = Produto.create valores
    end

end