require 'test_helper'
require 'generators/angular2setup/angular2setup_generator'

class Angular2setupGeneratorTest < Rails::Generators::TestCase
  tests Angular2setupGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
