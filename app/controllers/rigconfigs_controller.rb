class RigconfigsController < ApplicationController
before_action :set_rigconfig!, only: %i[edit update]

  def index
    @rigs = Rigconfig.all.decorate
  end

  def new
    @rig = Rigconfig.new
  end

  def create
    @rig = Rigconfig.new rigconfig_params
    if @rig.save
      flash[:success] = 'Конфигурация добавлена'
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @rig.update rigconfig_params
      flash[:success] = 'Конфигурация обновлена'
      redirect_to root_path
    else
      render :edit
    end
    
  end

  private

  def set_rigconfig!
    @rig = Rigconfig.find params[:id]
  end

  def rigconfig_params
    params.require(:rigconfig).permit(:oil_well, :drilling_crew, :rig_type, :rig_number)
  end
end
