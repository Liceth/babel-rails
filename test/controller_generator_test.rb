require 'test_helper'
require 'rails/generators/rails/controller/controller_generator'
require 'rails/generators/babel/assets/assets_generator'

class ControllerGeneratorTest < Rails::Generators::TestCase
  tests Rails::Generators::ControllerGenerator

  destination File.expand_path("../tmp", __FILE__)
  setup do
    prepare_destination
    copy_routes
  end

  def test_assets
    run_generator %w(posts --javascript-engine=babel --orm=false)
    assert_no_file "app/assets/javascripts/posts.js"
    assert_file "app/assets/javascripts/posts.es6"
  end
end