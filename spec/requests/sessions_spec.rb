# frozen_string_literal: true

require 'rails_helper'
RSpec.describe 'Sessions' do
  it 'signs user in and out' do
    post '/users/sign_in', params: { user: { username: 'Sam', password: '12345678' } }
    expect(response).to redirect_to user_path(1)

    delete destroy_user_session_path
    expect(response).to redirect_to '/'
  end
end
