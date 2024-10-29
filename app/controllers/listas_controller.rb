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
  
    private
  
    def lista_params
      params.require(:lista).permit(:nome)
    end
  end
  