require 'spec_helper'
require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe '/', type: :feature do
  it 'diplays a list of surveys on the index page' do
    visit '/'
    expect(page).to have_content('Survey Index')
  end
end
