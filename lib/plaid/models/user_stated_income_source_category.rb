=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.419.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.1.0

=end

require 'date'
require 'time'

module Plaid
  class UserStatedIncomeSourceCategory
    OTHER = "OTHER".freeze
    SALARY = "SALARY".freeze
    UNEMPLOYMENT = "UNEMPLOYMENT".freeze
    CASH = "CASH".freeze
    GIG_ECONOMY = "GIG_ECONOMY".freeze
    RENTAL = "RENTAL".freeze
    CHILD_SUPPORT = "CHILD_SUPPORT".freeze
    MILITARY = "MILITARY".freeze
    RETIREMENT = "RETIREMENT".freeze
    LONG_TERM_DISABILITY = "LONG_TERM_DISABILITY".freeze
    BANK_INTEREST = "BANK_INTEREST".freeze

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
