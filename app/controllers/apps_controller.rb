class AppsController < ApplicationController
  def index
    Transaction.create(trx_id: "acfaf", date_order: "2017-02-06", seller_name: "kjkgggh", delivery_service: "asd", address_ship: "wkwkwk")
    @transaction = Transaction.last
  end
end
