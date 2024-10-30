class ListasController < ApplicationController
    def index
      @listas = Lista.all
    end
  
    def create
      @lista = Lista.new(lista_params)
      if @lista.save
        redirect_to root_path, notice: 'Lista criada com sucesso.'
      else
        render :index
      end
    end

    def destroy
      @lista = Lista.find(params[:id])
      @lista.destroy
      redirect_to listas_path, notice: 'Lista excluída com sucesso.'
    end
  
    private
  
    def lista_params
      params.require(:lista).permit(:nome)
    end
  end
  