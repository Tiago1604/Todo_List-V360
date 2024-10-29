class TarefasController < ApplicationController
    before_action :set_lista
    
    def index
      @tarefas = @lista.tarefas
    end
  
    def create
      @tarefa = @lista.tarefas.new(tarefa_params)
      if @tarefa.save
        redirect_to lista_tarefas_path(@lista), notice: 'Tarefa criada com sucesso.'
      else
        render :index
      end
    end
    
    def update
      @tarefa = Tarefa.find(params[:id])
      @tarefa.update(concluida: !@tarefa.concluida)
      redirect_to lista_tarefas_path(@lista), notice: 'Tarefa atualizada com sucesso.'
    end
  
    private
  
    def set_lista
      @lista = Lista.find(params[:lista_id])
    end
  
    def tarefa_params
      params.require(:tarefa).permit(:nome)
    end
  end
  