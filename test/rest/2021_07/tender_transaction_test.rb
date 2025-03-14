# typed: strict
# frozen_string_literal: true

########################################################################################################################
# This file is auto-generated. If you have an issue, please create a GitHub issue.                                     #
########################################################################################################################

$VERBOSE = nil
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))

require "minitest/autorun"
require "webmock/minitest"

require "shopify_api"
require_relative "../../test_helper"

class TenderTransaction202107Test < Test::Unit::TestCase
  def setup
    super

    test_session = ShopifyAPI::Auth::Session.new(id: "id", shop: "test-shop.myshopify.io", access_token: "this_is_a_test_token")
    ShopifyAPI::Context.activate_session(test_session)
    modify_context(api_version: "2021-07")
  end

  def teardown
    super

    ShopifyAPI::Context.deactivate_session
  end

  sig do
    void
  end
  def test_1()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2021-07/tender_transactions.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"tender_transactions" => [{"id" => 1011222856, "order_id" => 450789469, "amount" => "250.94", "currency" => "USD", "user_id" => nil, "test" => false, "processed_at" => "2005-08-07T10:22:51-04:00", "remote_reference" => "authorization-key", "payment_details" => nil, "payment_method" => "unknown"}, {"id" => 1011222855, "order_id" => 450789469, "amount" => "250.94", "currency" => "USD", "user_id" => nil, "test" => false, "processed_at" => "2005-08-05T10:22:51-04:00", "remote_reference" => "authorization-key", "payment_details" => nil, "payment_method" => "unknown"}]}), headers: {})

    ShopifyAPI::TenderTransaction.all()

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2021-07/tender_transactions.json")
  end

  sig do
    void
  end
  def test_2()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2021-07/tender_transactions.json?since_id=1011222857")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"tender_transactions" => [{"id" => 1011222858, "order_id" => 450789469, "amount" => "250.94", "currency" => "USD", "user_id" => nil, "test" => false, "processed_at" => "2005-08-07T10:22:51-04:00", "remote_reference" => "authorization-key", "payment_details" => nil, "payment_method" => "unknown"}]}), headers: {})

    ShopifyAPI::TenderTransaction.all(
      since_id: "1011222857",
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2021-07/tender_transactions.json?since_id=1011222857")
  end

  sig do
    void
  end
  def test_3()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2021-07/tender_transactions.json?processed_at_min=2005-08-06+10%3A22%3A51+-0400")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"tender_transactions" => [{"id" => 1011222860, "order_id" => 450789469, "amount" => "250.94", "currency" => "USD", "user_id" => nil, "test" => false, "processed_at" => "2005-08-07T10:22:51-04:00", "remote_reference" => "authorization-key", "payment_details" => nil, "payment_method" => "unknown"}]}), headers: {})

    ShopifyAPI::TenderTransaction.all(
      processed_at_min: "2005-08-06 10:22:51 -0400",
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2021-07/tender_transactions.json?processed_at_min=2005-08-06+10%3A22%3A51+-0400")
  end

  sig do
    void
  end
  def test_4()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2021-07/tender_transactions.json?processed_at_max=2005-08-06+10%3A22%3A51+-0400")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"tender_transactions" => [{"id" => 1011222861, "order_id" => 450789469, "amount" => "250.94", "currency" => "USD", "user_id" => nil, "test" => false, "processed_at" => "2005-08-05T10:22:51-04:00", "remote_reference" => "authorization-key", "payment_details" => nil, "payment_method" => "unknown"}]}), headers: {})

    ShopifyAPI::TenderTransaction.all(
      processed_at_max: "2005-08-06 10:22:51 -0400",
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2021-07/tender_transactions.json?processed_at_max=2005-08-06+10%3A22%3A51+-0400")
  end

  sig do
    void
  end
  def test_5()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2021-07/tender_transactions.json?processed_at_max=2005-08-05+10%3A22%3A51+-0400")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"tender_transactions" => [{"id" => 1011222863, "order_id" => 450789469, "amount" => "250.94", "currency" => "USD", "user_id" => nil, "test" => false, "processed_at" => "2005-08-05T10:22:51-04:00", "remote_reference" => "authorization-key", "payment_details" => nil, "payment_method" => "unknown"}]}), headers: {})

    ShopifyAPI::TenderTransaction.all(
      processed_at_max: "2005-08-05 10:22:51 -0400",
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2021-07/tender_transactions.json?processed_at_max=2005-08-05+10%3A22%3A51+-0400")
  end

  sig do
    void
  end
  def test_6()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2021-07/tender_transactions.json?order=processed_at+ASC")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"tender_transactions" => [{"id" => 1011222865, "order_id" => 450789469, "amount" => "250.94", "currency" => "USD", "user_id" => nil, "test" => false, "processed_at" => "2005-08-05T10:22:51-04:00", "remote_reference" => "authorization-key", "payment_details" => nil, "payment_method" => "unknown"}, {"id" => 1011222866, "order_id" => 450789469, "amount" => "250.94", "currency" => "USD", "user_id" => nil, "test" => false, "processed_at" => "2005-08-07T10:22:51-04:00", "remote_reference" => "authorization-key", "payment_details" => nil, "payment_method" => "unknown"}]}), headers: {})

    ShopifyAPI::TenderTransaction.all(
      order: "processed_at ASC",
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2021-07/tender_transactions.json?order=processed_at+ASC")
  end

end
