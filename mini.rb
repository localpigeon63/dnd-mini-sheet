# frozen_string_literal: true
# typed: strong
require 'sinatra'

get '/' do
  # data = {:name => "Daisy"}
  data = {
    name: "Daisy",
    attributes: {
      str: 17,
      dex: 7,
      con: 12,
      int: 13,
      wis: 16,
      cha: 12
    },
    modifiers: {
      str: 3,
      dex: -2,
      con: 1,
      int: 1,
      wis: 3,
      cha: 1
    }
  }
  erb(:index, {locals: data})
end
