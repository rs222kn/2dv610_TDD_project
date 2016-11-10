require 'rubygems'
gem 'mocha'
require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/unit'
require 'mocha/mini_test'
require_relative '../model/player'

describe 'Player class' do

  it 'create with empty name should throw ArgumentError' do
    assert_raises ArgumentError do
      Player.new('')
    end
  end
end
