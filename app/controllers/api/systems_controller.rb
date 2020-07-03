class Api::SystemsController < ApplicationController

  def init
    render 'init.json.jb'
  end

  def ncu3fn8u
    if params[:secret] == "nasdf82fe2"
      open_gate_1
      render 'ncu3fn8u.json.jb'
      p current_gate
    else
      redirect_to root_path
    end
  end

  def cef3
    if params[:operation] == "centerfuge" && current_gate >= 1
      open_gate_2
      render 'cef3.json.jb'
      p "current_gate #{current_gate}"
    else
      redirect_to root_path 
    end
  end

  def c34ew
    #request.POST is a list of only body params
    if request.POST[:keyword] == "budapest" && current_gate >= 2
      open_gate_3
      render 'c34ew.json.jb'
    else
      render json: {nope: true}
    end
  end

end
