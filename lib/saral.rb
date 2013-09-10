# saral/lib/saral.rb
require "saral/version"
require "saral/routing"
require "saral/controller"
require "saral/util"
require "saral/dependencies"

module Saral
  # Our code goes here...
  class Application
   def call(env)
     begin
       klass, act = get_controller_and_action(env)
       controller = klass.new(env)
       text = controller.send(act)
       [200, {'Content-Type' => 'text/html'}, [text]]
     rescue NameError
       [404, {'Content-Type' => 'text/html'}, ["Sorry! Page not found."]]
     end
   end
  end
end

