class DiceController < ApplicationController
  def index
    render :index
  end

  def roll_form
    @number = params[:dice].to_i
    @sides = params[:sides].to_i
    @rolls = Array.new(@number) { rand(1..@sides) }
  
    render :roll
  end
end
