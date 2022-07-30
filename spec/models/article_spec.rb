# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'validates' do 
    let(:article) { create(:article) }
    let(:user) { create(:user) }

    it 'content not be nil' do 
      article = user.articles.create(content:'')
      
      expect(article).to_not be_valid
    end

  end
end
