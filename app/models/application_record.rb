# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  include TranslateEnum
  primary_abstract_class
end
