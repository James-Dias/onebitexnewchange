require 'rails_helper'

RSpec.describe "Exchange Currency Process", :type => :system, js: true do
  it "show exchange value" do
    visit '/'
    within("#exchange_form") do
      select('EUR', from: 'source_currency')
      select('USD', from: 'target_currency')
      fill_in 'amount', with: rand(1..9999)
    end
    find(".change-currency").click
    #find_field('amount').native.send_keys "2"
    #p page.execute_script("$('#result')")
    # save_and_open_page
    #p page.find('#source_currency')
    find_field('result').value
    #expect(page).to have_content("#result")
    expect(page).to have_http_status(:success)
  end
end
