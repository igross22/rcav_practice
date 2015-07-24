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

end

