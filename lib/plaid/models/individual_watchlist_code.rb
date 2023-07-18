=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.390.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.1.0

=end

require 'date'
require 'time'

module Plaid
  class IndividualWatchlistCode
    AU_CON = "AU_CON".freeze
    CA_CON = "CA_CON".freeze
    EU_CON = "EU_CON".freeze
    IZ_CIA = "IZ_CIA".freeze
    IZ_IPL = "IZ_IPL".freeze
    IZ_PEP = "IZ_PEP".freeze
    IZ_UNC = "IZ_UNC".freeze
    IZ_WBK = "IZ_WBK".freeze
    UK_HMC = "UK_HMC".freeze
    US_DPL = "US_DPL".freeze
    US_DTC = "US_DTC".freeze
    US_FBI = "US_FBI".freeze
    US_FSE = "US_FSE".freeze
    US_ISN = "US_ISN".freeze
    US_MBS = "US_MBS".freeze
    US_PLC = "US_PLC".freeze
    US_SDN = "US_SDN".freeze
    US_SSI = "US_SSI".freeze
    SG_SOF = "SG_SOF".freeze
    TR_TWL = "TR_TWL".freeze
    TR_DFD = "TR_DFD".freeze
    TR_FOR = "TR_FOR".freeze
    TR_WMD = "TR_WMD".freeze
    TR_CMB = "TR_CMB".freeze

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
