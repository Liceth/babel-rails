require 'rails/railtie'
require 'rails/generators'
require 'babel/rails/js_hook.rb'

module Babel
  module Rails
    class Railtie < ::Rails::Railtie
      config.app_generators.javascript_engine :es6

      initializer 'override js_template hook' do |app|
        if app.config.generators.rails[:javascript_engine] == :es6
          ::Rails::Generators::NamedBase.send :include, Babel::Rails::JsHook
        end
      end
    end
  end
end