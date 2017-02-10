require 'rails_helper'

RSpec.describe Transaction, type: :model do

  before(:all) do
    # Create object
    FactoryGirl.create(:transaction, :jne_transaction)
  end

  # It make sure that the data are present and shows right values
  it "has a valid value" do
    # Make sure is not null
    expect(Transaction.first).not_to equal nil

    # Check instance of each element
    expect(Transaction.first.trx_id).to be_a String
    expect(Transaction.first.address_ship).to be_a String
    expect(Transaction.first.date_order).to be_a Date
    expect(Transaction.first.seller_name).to be_a String
    expect(Transaction.first.delivery_service).to be_a String
  end

  # It make sure that Transaction ID doesn't show up null on UI
  it "has a Transaction ID" do
    # Check if it's not null
    expect(Transaction.first.trx_id).to_not equal nil
  end

end
