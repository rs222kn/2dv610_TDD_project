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

  it 'get player name capitalized' do
    player = Player.new('jonas');
    assert_equal player.get_name, 'Jonas' 
  end

  it 'get all added moves' do
    player = Player.new('Jonas')
    move = mock()
    player.add_move(move)
    assert_includes player.get_all_moves, move
  end


end
