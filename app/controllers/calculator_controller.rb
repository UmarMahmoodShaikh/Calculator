class CalculatorController < ApplicationController
  def calculate
    a = params[:a].to_i
    b = params[:b].to_i
    operator = params[:operator]
    result =
      case operator
      when '+'
        a + b
      when '-'
        a - b
      when '*'
        a * b
      when '/'
        if b.zero?
          'Division by zero is not allowed'
        else
          a.to_f / b
        end
      else
        'Unsupported operator'
      end
    render json: { result: result }
  end
end
