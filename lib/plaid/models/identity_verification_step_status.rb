=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.177.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module Plaid
  class IdentityVerificationStepStatus
    SUCCESS = "success".freeze
    ACTIVE = "active".freeze
    FAILED = "failed".freeze
    WAITING_FOR_PREREQUISITE = "waiting_for_prerequisite".freeze
    NOT_APPLICABLE = "not_applicable".freeze
    SKIPPED = "skipped".freeze
    EXPIRED = "expired".freeze
    CANCELED = "canceled".freeze
    PENDING_REVIEW = "pending_review".freeze
    MANUALLY_APPROVED = "manually_approved".freeze
    MANUALLY_REJECTED = "manually_rejected".freeze

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
