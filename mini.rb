# frozen_string_literal: true
# typed: strong
require 'sinatra'

#[7,8,9, 11,12, 20].map {|s| (s - 10) /2}
get '/' do
  # data = {:name => "Daisy"}
    attributes = {
      str: 17,
      dex: 7,
      con: 12,
      int: 13,
      wis: 16,
      cha: 12
    }

  modifiers = attributes.map do |stat,score|
    modifier = (score - 10) /2
    [stat, modifier]
  end.to_h
  # [3,-2,1,1,4,1]
  # [[:str, 3], [:dex, -2]]

  data = {
    name: "Daisy",
    attributes: attributes,
    modifiers: modifiers
  }

  erb(:index, {locals: data})
end
