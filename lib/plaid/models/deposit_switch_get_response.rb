=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.16.6

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0

=end

require 'date'
require 'time'

module Plaid
  # DepositSwitchGetResponse defines the response schema for `/deposit_switch/get`
  class DepositSwitchGetResponse
    # The ID of the deposit switch
    attr_accessor :deposit_switch_id

    # The ID of the bank account the direct deposit was switched to
    attr_accessor :target_account_id

    # The ID of the Item the direct deposit was switched to.
    attr_accessor :target_item_id

    # The state of the deposit switch.
    attr_accessor :state

    # When `true`, user’s direct deposit goes to multiple banks. When false, user’s direct deposit only goes to the target account. Always `null` if the deposit switch has not been completed.
    attr_accessor :account_has_multiple_allocations

    # When `true`, the target account is allocated the remainder of direct deposit after all other allocations have been deducted. When `false`, user’s direct deposit is allocated as a percent or amount. Always `null` if the deposit switch has not been completed.
    attr_accessor :is_allocated_remainder

    # The percentage of direct deposit allocated to the target account. Always `null` if the target account is not allocated a percentage or if the deposit switch has not been completed or if `is_allocated_remainder` is true.
    attr_accessor :percent_allocated

    # The dollar amount of direct deposit allocated to the target account. Always `null` if the target account is not allocated an amount or if the deposit switch has not been completed.
    attr_accessor :amount_allocated

    # ISO8601 date the deposit switch was created.
    attr_accessor :date_created

    # ISO8601 date the deposit switch was completed. Always `null` if the deposit switch has not been completed.
    attr_accessor :date_completed

    # A unique identifier for the request, which can be used for troubleshooting. This identifier, like all Plaid identifiers, is case sensitive.
    attr_accessor :request_id

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'deposit_switch_id' => :'deposit_switch_id',
        :'target_account_id' => :'target_account_id',
        :'target_item_id' => :'target_item_id',
        :'state' => :'state',
        :'account_has_multiple_allocations' => :'account_has_multiple_allocations',
        :'is_allocated_remainder' => :'is_allocated_remainder',
        :'percent_allocated' => :'percent_allocated',
        :'amount_allocated' => :'amount_allocated',
        :'date_created' => :'date_created',
        :'date_completed' => :'date_completed',
        :'request_id' => :'request_id'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'deposit_switch_id' => :'String',
        :'target_account_id' => :'String',
        :'target_item_id' => :'String',
        :'state' => :'String',
        :'account_has_multiple_allocations' => :'Boolean',
        :'is_allocated_remainder' => :'Boolean',
        :'percent_allocated' => :'Float',
        :'amount_allocated' => :'Float',
        :'date_created' => :'Date',
        :'date_completed' => :'Date',
        :'request_id' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'target_account_id',
        :'target_item_id',
        :'account_has_multiple_allocations',
        :'is_allocated_remainder',
        :'percent_allocated',
        :'amount_allocated',
        :'date_completed',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::DepositSwitchGetResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::DepositSwitchGetResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'deposit_switch_id')
        self.deposit_switch_id = attributes[:'deposit_switch_id']
      end

      if attributes.key?(:'target_account_id')
        self.target_account_id = attributes[:'target_account_id']
      end

      if attributes.key?(:'target_item_id')
        self.target_item_id = attributes[:'target_item_id']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'account_has_multiple_allocations')
        self.account_has_multiple_allocations = attributes[:'account_has_multiple_allocations']
      end

      if attributes.key?(:'is_allocated_remainder')
        self.is_allocated_remainder = attributes[:'is_allocated_remainder']
      end

      if attributes.key?(:'percent_allocated')
        self.percent_allocated = attributes[:'percent_allocated']
      end

      if attributes.key?(:'amount_allocated')
        self.amount_allocated = attributes[:'amount_allocated']
      end

      if attributes.key?(:'date_created')
        self.date_created = attributes[:'date_created']
      end

      if attributes.key?(:'date_completed')
        self.date_completed = attributes[:'date_completed']
      end

      if attributes.key?(:'request_id')
        self.request_id = attributes[:'request_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @deposit_switch_id.nil?
        invalid_properties.push('invalid value for "deposit_switch_id", deposit_switch_id cannot be nil.')
      end

      if @state.nil?
        invalid_properties.push('invalid value for "state", state cannot be nil.')
      end

      if @date_created.nil?
        invalid_properties.push('invalid value for "date_created", date_created cannot be nil.')
      end

      if @request_id.nil?
        invalid_properties.push('invalid value for "request_id", request_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @deposit_switch_id.nil?
      return false if @state.nil?
      state_validator = EnumAttributeValidator.new('String', ["initialized", "completed", "error"])
      return false unless state_validator.valid?(@state)
      return false if @date_created.nil?
      return false if @request_id.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ["initialized", "completed", "error"])
      unless validator.valid?(state)
        fail ArgumentError, "invalid value for \"state\", must be one of #{validator.allowable_values}."
      end
      @state = state
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          deposit_switch_id == o.deposit_switch_id &&
          target_account_id == o.target_account_id &&
          target_item_id == o.target_item_id &&
          state == o.state &&
          account_has_multiple_allocations == o.account_has_multiple_allocations &&
          is_allocated_remainder == o.is_allocated_remainder &&
          percent_allocated == o.percent_allocated &&
          amount_allocated == o.amount_allocated &&
          date_created == o.date_created &&
          date_completed == o.date_completed &&
          request_id == o.request_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [deposit_switch_id, target_account_id, target_item_id, state, account_has_multiple_allocations, is_allocated_remainder, percent_allocated, amount_allocated, date_created, date_completed, request_id].hash
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
