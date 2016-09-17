# encoding: utf-8

require "rango/controller"

class App < Rango::Controller
  def test
    "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  end
end

Rango::Router.use(:rack_router)

Rango.logger.instance_eval do
  def error(*) end
  def debug(*) end
  def info(*)  end
  def fatal(*) end
  def warn(*)  end
end

Rack::Handler::Thin.run(App.dispatcher(:test), Port: 4003)
