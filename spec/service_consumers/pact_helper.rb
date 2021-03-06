$: << File.expand_path("../../../", __FILE__)
require 'pact/provider/rspec'
require 'db'
require 'spec/support/database_cleaner'
require 'pact_broker/api'

require_relative 'provider_states_for_pact_broker_client'

Pact.service_provider "Pact Broker" do

  honours_pact_with "Pact Broker Client" do
    pact_uri "https://raw.githubusercontent.com/bethesque/pact_broker-client/master/spec/pacts/pact_broker_client-pact_broker.json"
  end

end
