# frozen_string_literal: true

class SitesController < ApplicationController
  before_action -> { authorize :sites }

  def home; end
end
