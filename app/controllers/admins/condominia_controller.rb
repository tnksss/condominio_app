class Admins::CondominiaController < Admins::BaseController
  
  before_action :set_condominium, only: [:show,:edit,:update,:destroy]
  
  def index
    @condominia = Condominium.all
  end
  
  def show
  end
  
  def new
    @condominium = Condominium.new
  end
  
  def create
    @condominium = Condominium.new(condominium_params)
    if @condominium.save
      flash[:success] = I18n.t('flash.actions.create.m', resource_name: Condominium.model_name.human)
      redirect_to admins_condominia_path
    else
      flash.now[:error] = I18n.t('flash.actions.errors')
      render :new
    end
  end

  def edit
  end

  def update
    if @condominium.update_attributes(condominium_params)
      flash[:success] = I18n.t('flash.actions.update.m', resource_name: Condominium.model_name.human)
      redirect_to admins_condominia_path
    else
      flash.now[:error] = I18n.t('flash.actions.errors')
      render :edit
    end
  end
  def destroy
    @condominium = Condominium.find(params[:id])
    
    @condominium.destroy
    flash[:success] = I18n.t('flash.actions.destroy.m', resource_name: Condominium.model_name.human) 
    redirect_to admins_condominia_path
  end

  private
  def set_condominium
    @condominium = Condominium.find(params[:id])
  end
  
  def condominium_params
    params.require(:condominium).permit(:name,:address,:number,:phone,:email)
  end
end
