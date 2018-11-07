class ProdutosController < ApplicationController
    def index
        @produtos_nome = Produto.all.limit 15
        @produtos_preco = Produto.all.order(:preco).limit 2
    end

    def new
        @produto = Produto.new
    end

    def create
        valores = params.require(:produto).permit(:nome,:descricao,:quantidade,:preco)
        @produto = Produto.new valores
        if @produto.save  
            flash[:notice] = "Produto cadastrado com sucesso!"
            redirect_to root_path
        else
            render :new
        end
    end

    def destroy
        id = params[:id]
        Produto.destroy id
        redirect_to root_path
    end

    def busca 
        @busca_nome = params[:nome]
        @produtos = Produto.where "nome like ?", "%#{@busca_nome}%" 
    end

end