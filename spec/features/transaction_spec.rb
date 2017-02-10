require 'rails_helper'

describe 'Transaction' do

  before(:all) do
    # Create object to display on UI
    FactoryGirl.create(:transaction, :jne_transaction)
  end

  before(:each) do
    # visit page
    visit '/apps/index'
  end

  it "should respond with 200 status code" do
    # check status code
    page.should have_http_status 200
  end

  it "should display a success transaction message" do
    # test if transaction message is delivered
    page.should have_content "Transaction Successful!"
  end

  it "should display a proper Transaction ID" do
    # check if Transaction ID are displayed properly
    page.should have_content("Transaction ID: " + Transaction.last.trx_id)
  end

  it "should display transaction details" do
    # check transaction details
    page.should have_content("Seller: " + Transaction.last.seller_name)
    page.should have_content("Delivery Service: " + Transaction.last.delivery_service)
    page.should have_content("Date order: " + Transaction.last.date_order.strftime("%d/%m/%Y"))
    page.should have_content("Address Shipment: " + Transaction.last.address_ship)
  end

  it "should have a link to main menu" do
    # check if the link existed
    page.should have_content("Main menu")

    # try to navigate
    click_link "Main menu"
    page.should have_http_status 200
  end
end
