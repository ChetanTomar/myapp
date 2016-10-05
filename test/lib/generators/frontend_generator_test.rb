require 'test_helper'
require 'generators/frontend/frontend_generator'

class FrontendGeneratorTest < Rails::Generators::TestCase
  tests FrontendGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
