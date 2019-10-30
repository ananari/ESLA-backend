class TestController < ApplicationController
  def test
    render json: {yay: "you made it!", hooray: "we're here!"}
  end
end
