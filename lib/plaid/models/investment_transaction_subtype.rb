=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.121.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module Plaid
  class InvestmentTransactionSubtype
    ACCOUNT_FEE = "account fee".freeze
    ADJUSTMENT = "adjustment".freeze
    ASSIGNMENT = "assignment".freeze
    BUY = "buy".freeze
    BUY_TO_COVER = "buy to cover".freeze
    CONTRIBUTION = "contribution".freeze
    DEPOSIT = "deposit".freeze
    DISTRIBUTION = "distribution".freeze
    DIVIDEND = "dividend".freeze
    DIVIDEND_REINVESTMENT = "dividend reinvestment".freeze
    EXERCISE = "exercise".freeze
    EXPIRE = "expire".freeze
    FUND_FEE = "fund fee".freeze
    INTEREST = "interest".freeze
    INTEREST_RECEIVABLE = "interest receivable".freeze
    INTEREST_REINVESTMENT = "interest reinvestment".freeze
    LEGAL_FEE = "legal fee".freeze
    LOAN_PAYMENT = "loan payment".freeze
    LONG_TERM_CAPITAL_GAIN = "long-term capital gain".freeze
    LONG_TERM_CAPITAL_GAIN_REINVESTMENT = "long-term capital gain reinvestment".freeze
    MANAGEMENT_FEE = "management fee".freeze
    MARGIN_EXPENSE = "margin expense".freeze
    MERGER = "merger".freeze
    MISCELLANEOUS_FEE = "miscellaneous fee".freeze
    NON_QUALIFIED_DIVIDEND = "non-qualified dividend".freeze
    NON_RESIDENT_TAX = "non-resident tax".freeze
    PENDING_CREDIT = "pending credit".freeze
    PENDING_DEBIT = "pending debit".freeze
    QUALIFIED_DIVIDEND = "qualified dividend".freeze
    REBALANCE = "rebalance".freeze
    RETURN_OF_PRINCIPAL = "return of principal".freeze
    SELL = "sell".freeze
    SELL_SHORT = "sell short".freeze
    SHORT_TERM_CAPITAL_GAIN = "short-term capital gain".freeze
    SHORT_TERM_CAPITAL_GAIN_REINVESTMENT = "short-term capital gain reinvestment".freeze
    SPIN_OFF = "spin off".freeze
    SPLIT = "split".freeze
    STOCK_DISTRIBUTION = "stock distribution".freeze
    TAX = "tax".freeze
    TAX_WITHHELD = "tax withheld".freeze
    TRANSFER = "transfer".freeze
    TRANSFER_FEE = "transfer fee".freeze
    TRUST_FEE = "trust fee".freeze
    UNQUALIFIED_GAIN = "unqualified gain".freeze
    WITHDRAWAL = "withdrawal".freeze

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
