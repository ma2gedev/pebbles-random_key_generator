# -*- encoding: utf-8 -*-
require 'spec_helper'
require 'pebbles/random_key_generator'

describe Pebbles::RandomKeyGenerator do

  describe 'generate' do
    it 'should work' do
      length = 30
      result = Pebbles::RandomKeyGenerator.generate(length)
      expect(result.length).to eq(length)
    end
  end

end
