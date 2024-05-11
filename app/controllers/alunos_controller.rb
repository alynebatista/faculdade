class AlunosController < ApplicationController
    def create
        @aluno = Aluno.new(aluno_params)
    
        if @aluno.save
          render json: @aluno, status: :created
        else
          render json: @aluno.errors, status: :unprocessable_entity
        end
      end
    
      def show
          @aluno = Aluno.find(params[:id])
          render json: @aluno
      end
    
      def index
          @alunos = Aluno.all
          render json: @alunos
      end
    
      private
    
      def aluno_params
        params.require(:aluno).permit(:nome_completo, :matricula, :data_nascimento, :curso)
      end
end
