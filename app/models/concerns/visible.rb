# forzen_string_literal: true

module Visible
  extend ActiveSupport::Concern

  class_methods do 
    def all_states
      [ ['所有人', 'published' ], ['朋友', 'friendly' ], ['只限本人', 'draft' ]]
    end
  end

end
