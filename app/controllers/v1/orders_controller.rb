class V1::OrdersController < ApplicationController
  skip_before_action :verify_authenticity_token, raise: false

  def show
    order
  end

  def create
    if new_order(order_params).save
      render json: ActiveModelSerializers::SerializableResource.new(new_order).as_json(include: :order_items)
    else
      render json: {
        errors: new_order.errors.as_json
      }
    end
  end

  private

  def order_params
    params.require(:order).permit(:name, :email, order_items_attributes: [:product_id, :qty])
  end

  def order
    @order ||= Order.find(params[:id])
  end

  def new_order(attrs={})
    @order ||= Order.new(attrs)
  end
end