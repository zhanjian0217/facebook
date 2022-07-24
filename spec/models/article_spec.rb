# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'validates' do 
    let(:article) { create(:article)}

    it 'content 不能是空的' do 
      
    end

  end
end
