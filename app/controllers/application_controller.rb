class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_customer
    params[:customer_id]
  end

  def render_modal( titolo, partial)
      render :partial => 'layouts/show', locals: {:titolo => titolo, :corpo =>  partial }
  end

end
