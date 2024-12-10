class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :resource, :resource_name, :devise_mapping

  protected

  # Permitir parâmetros adicionais no Devise (nome, telefone)
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nome, :telefone])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nome, :telefone])
  end

  # Métodos usados pelo Devise para gerenciar recursos
  def resource_name
    :hospede
  end

  def resource
    @resource ||= Hospede.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:hospede]
  end
end

class HotelsController < ApplicationController
    def index
      @hotels = Hotel.page(params[:page]).per(10)
    end
  end
  
 



  