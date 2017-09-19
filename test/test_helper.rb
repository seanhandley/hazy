ENV["RAILS_ENV"] = "test"
$VERBOSE = nil

require_relative '../lib/hazy'

require 'minitest/autorun'
