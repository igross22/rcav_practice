Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square/:number", { :controller => "calculations", :action => "square" })

  get("/square_root/:number", { :controller => "calculations", :action => "square_root" })

  get("/random/:number/:number", { :controller => "calculations", :action => "random" })

  get("/payment/:number/:number/:number", { :controller => "calculations", :action => "payment" })

end
