class PerformancesController < ApplicationController
  before_action :set_performance, only: %i[ show edit update destroy ]

  def index
    @performances = Performance.all
  end

  def show
  end

  def new
    @performance = Performance.new
  end

  def create
    @performance = Performance.new(performance_params)
    if @performance.save
      redirect_to @performance
    else
      render :new, status: :unproccessable_entity
    end
  end

  def edit
  end

  def update
    if @performance.update(performance_params)
      redirect_to @performance
    else
      render :edit, status: :unproccessable_entity
    end
  end

  def destroy
    @performance.destroy
    redirect_to performances_path
  end

  private
    def set_performance
      @performance = Performance.find(params[:id])
    end

    def performance_params
      params.expect(performance: [ :name, :title, :email ])
    end
end
