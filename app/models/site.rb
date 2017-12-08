class Site < ApplicationRecord
    has_one :calendar

    before_save :sanitize_strings

    def self.search_by_name title
        Site.find_by title: title.to_s.underscore
    end

    def sanitize_strings
      self.title = title.underscore
    end

end
