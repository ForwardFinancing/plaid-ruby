=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.413.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.1.0

=end

require 'date'
require 'time'

module Plaid
  # Base Report information about an account
  class BaseReportAccount
    attr_accessor :balances

    # The last 2-4 alphanumeric characters of an account's official account number. Note that the mask may be non-unique between an Item's accounts, and it may also not match the mask that the bank displays to the user.
    attr_accessor :mask

    # The name of the account, either assigned by the user or by the financial institution itself
    attr_accessor :name

    # The official name of the account as given by the financial institution
    attr_accessor :official_name

    attr_accessor :type

    attr_accessor :subtype

    # The duration of transaction history available for this Item, typically defined as the time since the date of the earliest transaction in that account. Only returned by Base Report endpoints.
    attr_accessor :days_available

    # Transaction history associated with the account. Only returned by Base Report endpoints. Transaction history returned by endpoints such as `/transactions/get` or `/investments/transactions/get` will be returned in the top-level `transactions` field instead.
    attr_accessor :transactions

    # Data returned by the financial institution about the account owner or owners. For business accounts, the name reported may be either the name of the individual or the name of the business, depending on the institution. Multiple owners on a single account will be represented in the same `owner` object, not in multiple owner objects within the array.
    attr_accessor :owners

    attr_accessor :ownership_type

    # Calculated data about the historical balances on the account. Only returned by Base Report endpoints and currently not supported by `brokerage` or `investment` accounts.
    attr_accessor :historical_balances

    attr_accessor :account_insights

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'balances' => :'balances',
        :'mask' => :'mask',
        :'name' => :'name',
        :'official_name' => :'official_name',
        :'type' => :'type',
        :'subtype' => :'subtype',
        :'days_available' => :'days_available',
        :'transactions' => :'transactions',
        :'owners' => :'owners',
        :'ownership_type' => :'ownership_type',
        :'historical_balances' => :'historical_balances',
        :'account_insights' => :'account_insights'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'balances' => :'AccountBalance',
        :'mask' => :'String',
        :'name' => :'String',
        :'official_name' => :'String',
        :'type' => :'AccountType',
        :'subtype' => :'AccountSubtype',
        :'days_available' => :'Float',
        :'transactions' => :'Array<BaseReportTransaction>',
        :'owners' => :'Array<Owner>',
        :'ownership_type' => :'OwnershipType',
        :'historical_balances' => :'Array<HistoricalBalance>',
        :'account_insights' => :'BaseReportAccountInsights'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'mask',
        :'official_name',
        :'subtype',
        :'ownership_type',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::BaseReportAccount` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::BaseReportAccount`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'balances')
        self.balances = attributes[:'balances']
      end

      if attributes.key?(:'mask')
        self.mask = attributes[:'mask']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'official_name')
        self.official_name = attributes[:'official_name']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'subtype')
        self.subtype = attributes[:'subtype']
      end

      if attributes.key?(:'days_available')
        self.days_available = attributes[:'days_available']
      end

      if attributes.key?(:'transactions')
        if (value = attributes[:'transactions']).is_a?(Array)
          self.transactions = value
        end
      end

      if attributes.key?(:'owners')
        if (value = attributes[:'owners']).is_a?(Array)
          self.owners = value
        end
      end

      if attributes.key?(:'ownership_type')
        self.ownership_type = attributes[:'ownership_type']
      end

      if attributes.key?(:'historical_balances')
        if (value = attributes[:'historical_balances']).is_a?(Array)
          self.historical_balances = value
        end
      end

      if attributes.key?(:'account_insights')
        self.account_insights = attributes[:'account_insights']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @balances.nil?
        invalid_properties.push('invalid value for "balances", balances cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @days_available.nil?
        invalid_properties.push('invalid value for "days_available", days_available cannot be nil.')
      end

      if @transactions.nil?
        invalid_properties.push('invalid value for "transactions", transactions cannot be nil.')
      end

      if @owners.nil?
        invalid_properties.push('invalid value for "owners", owners cannot be nil.')
      end

      if @historical_balances.nil?
        invalid_properties.push('invalid value for "historical_balances", historical_balances cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @balances.nil?
      return false if @name.nil?
      return false if @type.nil?
      return false if @days_available.nil?
      return false if @transactions.nil?
      return false if @owners.nil?
      return false if @historical_balances.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          balances == o.balances &&
          mask == o.mask &&
          name == o.name &&
          official_name == o.official_name &&
          type == o.type &&
          subtype == o.subtype &&
          days_available == o.days_available &&
          transactions == o.transactions &&
          owners == o.owners &&
          ownership_type == o.ownership_type &&
          historical_balances == o.historical_balances &&
          account_insights == o.account_insights
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [balances, mask, name, official_name, type, subtype, days_available, transactions, owners, ownership_type, historical_balances, account_insights].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Plaid.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
