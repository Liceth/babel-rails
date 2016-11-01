require 'test_helper'
require 'rails/generators/babel/assets/assets_generator'

class AssetGeneratorTest < Rails::Generators::TestCase
  tests Babel::Generators::AssetsGenerator

  destination File.expand_path("../tmp", __FILE__)
  setup :prepare_destination

  def test_assets
    run_generator %w(posts)
    assert_no_file "app/assets/javascripts/posts.js"
    assert_file "app/assets/javascripts/posts.es6"
  end
end