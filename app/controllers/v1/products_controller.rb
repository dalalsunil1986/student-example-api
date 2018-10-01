class V1::ProductsController < ApplicationController
  skip_before_action :verify_authenticity_token, raise: false

  def index
    render json: Product.all.map {|p| ActiveModelSerializers::SerializableResource.new(p).as_json }
  end
end