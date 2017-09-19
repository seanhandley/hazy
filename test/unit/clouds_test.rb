require_relative '../test_helper'

module Hazy
  class CloudsTest < Minitest::Test
    def setup
      @path = File.join(__dir__, '../fixtures/clouds.yaml')
    end

    def test_empty_config
      Clouds.clear
      assert_equal({}, Clouds.config)
    end

    def test_load_from_file
      Clouds.load_from_file @path
      assert_equal 'password', Clouds.config['_test_cloud_']['auth']['password']
    end
  end
end
