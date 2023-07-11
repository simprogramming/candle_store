# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  include TranslateEnum
  include Searchable

  primary_abstract_class
end
