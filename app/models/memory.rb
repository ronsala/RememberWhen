# frozen_string_literal: true

class Memory < ApplicationRecord
  belongs_to :user
  belongs_to :event
end
