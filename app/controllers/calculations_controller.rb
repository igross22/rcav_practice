class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square_root

    @user_input = params["number"].to_i

    @square_root = Math.sqrt(@user_input)

    #@user_input = Math.sqrt("number").to_i

    render("square_root.html.erb")

  end

  def square

    @user_input = params["number"].to_i

    @squared = @user_input**2

    #@user_input = Math.sqrt("number").to_i

    render("square.html.erb")

  end

  def random

    @lower_bound = params["number1"].to_i

    @upper_bound = params["number2"].to_i

    @difference = @upper_bound-@lower_bound

    @output = @lower_bound + rand(@difference)

    render ("random.html.erb")

  end

  def payment

    @interest_rate = params["number1"].to_f

    @interest_rate_refined = @interest_rate/100.to_f

    @years = params["number2"].to_i

    @principal = params["number3"].to_i

    @monthly_payment =(@interest_rate / 1200 * @principal)/(1 - (1 + @interest_rate / 1200)**-(@years * 12))

    #fix this later

    render ("payment.html.erb")

  end

end


