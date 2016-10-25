require 'rails/railtie'
require 'rails/generators'
require 'babel/rails/js_hook'

module Babel
  module Rails
    class Railtie < ::Rails::Railtie
      config.app_generators.javascript_engine :babel

      initializer 'override js_template hook' do |app|
        if app.config.generators.rails[:javascript_engine] == :babel
          ::Rails::Generators::NamedBase.send :include, Babel::Rails::JsHook
        end
      end
    end
  end
end