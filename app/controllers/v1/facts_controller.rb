class V1::FactsController < ApplicationController
  include SecuredByIp

  before_action :create_initial_facts_if_none

  def index
    render json: {
      facts: facts
    }
  end

  def show
    render json: {
      fact: fact
    }
  end

  def create
    new_fact(fact_params)
    if new_fact.save
      render json: {
        fact: new_fact
      }
    else
      render json: {
        errors: new_fact.errors
      }
    end
  end

  def delete
    if fact.destroy
      render status: :ok
    else
      render 
    end
  end

  private

  def fact_params
    params.require(:fact).permit(:text)
  end

  def new_fact(params={})
    @fact ||= ip_address.facts.build(params)
  end

  def fact
    @fact ||= ip_address.facts.find(params[:id]).as_json
  end

  def facts
    @facts ||= ip_address.facts.as_json
  end

  def create_initial_facts_if_none
    if ip_address.facts.none?
      ip_address.facts.create(text: "Fish can swim")
      ip_address.facts.create(text: "Superman can fly")
    end
  end

end