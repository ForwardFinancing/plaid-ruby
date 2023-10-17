=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.457.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.1.0

=end

require 'date'
require 'time'

module Plaid
  class LinkEventName
    BANK_INCOME_INSIGHTS_COMPLETED = "BANK_INCOME_INSIGHTS_COMPLETED".freeze
    CLOSE_OAUTH = "CLOSE_OAUTH".freeze
    ERROR = "ERROR".freeze
    EXIT = "EXIT".freeze
    FAIL_OAUTH = "FAIL_OAUTH".freeze
    HANDOFF = "HANDOFF".freeze
    OPEN = "OPEN".freeze
    OPEN_MY_PLAID = "OPEN_MY_PLAID".freeze
    OPEN_OAUTH = "OPEN_OAUTH".freeze
    SEARCH_INSTITUTION = "SEARCH_INSTITUTION".freeze
    SELECT_AUTH_TYPE = "SELECT_AUTH_TYPE".freeze
    SELECT_BRAND = "SELECT_BRAND".freeze
    SELECT_DEGRADED_INSTITUTION = "SELECT_DEGRADED_INSTITUTION".freeze
    SELECT_DOWN_INSTITUTION = "SELECT_DOWN_INSTITUTION".freeze
    SELECT_FILTERED_INSTITUTION = "SELECT_FILTERED_INSTITUTION".freeze
    SELECT_INSTITUTION = "SELECT_INSTITUTION".freeze
    SUBMIT_ACCOUNT_NUMBER = "SUBMIT_ACCOUNT_NUMBER".freeze
    SUBMIT_CREDENTIALS = "SUBMIT_CREDENTIALS".freeze
    SUBMIT_DOCUMENTS = "SUBMIT_DOCUMENTS".freeze
    SUBMIT_DOCUMENTS_ERROR = "SUBMIT_DOCUMENTS_ERROR".freeze
    SUBMIT_DOCUMENTS_SUCCESS = "SUBMIT_DOCUMENTS_SUCCESS".freeze
    SUBMIT_MFA = "SUBMIT_MFA".freeze
    SUBMIT_ROUTING_NUMBER = "SUBMIT_ROUTING_NUMBER".freeze
    TRANSITION_VIEW = "TRANSITION_VIEW".freeze
    VIEW_DATA_TYPES = "VIEW_DATA_TYPES".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      # We do not validate that the value is one of the enums set in the OpenAPI
      # file because we want to be able to add to our list of enums without
      # breaking this client library.
      value
    end
  end

end
