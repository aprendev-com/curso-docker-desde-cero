class CatsController < ApplicationController
  def index
    render json: { cats: cats }
  end

  private

  def cats
    Rails.cache.fetch("cats", expires_in: 25.seconds) do
      Cat.all.to_a
    end
  end
end
