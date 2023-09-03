class BarsController < ApplicationController
    # Lista todos los bares
    def index
      @bars = Bar.all
      render json: @bars
    end
  
    # Muestra un bar específico
    def show
      @bar = Bar.find(params[:id]) # Busca por el ID que es equivalente al _id en MongoDB
      render json: @bar
    end
  
    # Crea un nuevo bar
    def create
      @bar = Bar.new(bar_params)
      if @bar.save
        render json: @bar, status: :created
      else
        render json: @bar.errors, status: :unprocessable_entity
      end
    end
  
    # Actualiza un bar existente
    def update
      @bar = Bar.find(params[:id]) # Busca por el ID
      if @bar.update(bar_params)
        render json: @bar
      else
        render json: @bar.errors, status: :unprocessable_entity
      end
    end
  
    # Elimina un bar
    def destroy
      @bar = Bar.find(params[:id]) # Busca por el ID
      @bar.destroy
      head :no_content
    end
  
    private
  
    def bar_params
      params.require(:bar).permit(:name, :ubication, :description, menu: [], poster: [], events: [], posts: [])
    end
  end
  