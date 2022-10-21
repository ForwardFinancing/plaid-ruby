=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.196.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module Plaid
  # An optional object to be used with the request. If specified, `options` must not be `null`.
  class TransactionsGetRequestOptions
    # A list of `account_ids` to retrieve for the Item  Note: An error will be returned if a provided `account_id` is not associated with the Item.
    attr_accessor :account_ids

    # The number of transactions to fetch.
    attr_accessor :count

    # The number of transactions to skip. The default value is 0.
    attr_accessor :offset

    # Include the raw unparsed transaction description from the financial institution. This field is disabled by default. If you need this information in addition to the parsed data provided, contact your Plaid Account Manager.
    attr_accessor :include_original_description

    # Please use [`include_personal_finance_category`](https://plaid.com/docs/api/products/transactions/#transactions-get-request-options-include-personal-finance-category) instead.
    attr_accessor :include_personal_finance_category_beta

    # Include the [`personal_finance_category`](https://plaid.com/docs/api/products/transactions/#transactions-get-response-transactions-personal-finance-category) object in the response.  See the [`taxonomy csv file`](https://plaid.com/documents/transactions-personal-finance-category-taxonomy.csv) for a full list of personal finance categories.  We’re introducing Category Rules - a new beta endpoint that will enable you to change the `personal_finance_category` for a transaction based on your users’ needs. When rules are set, the selected category will override the Plaid provided category. To learn more, send a note to transactions-feedback@plaid.com.
    attr_accessor :include_personal_finance_category

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_ids' => :'account_ids',
        :'count' => :'count',
        :'offset' => :'offset',
        :'include_original_description' => :'include_original_description',
        :'include_personal_finance_category_beta' => :'include_personal_finance_category_beta',
        :'include_personal_finance_category' => :'include_personal_finance_category'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_ids' => :'Array<String>',
        :'count' => :'Integer',
        :'offset' => :'Integer',
        :'include_original_description' => :'Boolean',
        :'include_personal_finance_category_beta' => :'Boolean',
        :'include_personal_finance_category' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'include_original_description',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::TransactionsGetRequestOptions` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::TransactionsGetRequestOptions`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_ids')
        if (value = attributes[:'account_ids']).is_a?(Array)
          self.account_ids = value
        end
      end

      if attributes.key?(:'count')
        self.count = attributes[:'count']
      else
        self.count = 100
      end

      if attributes.key?(:'offset')
        self.offset = attributes[:'offset']
      else
        self.offset = 0
      end

      if attributes.key?(:'include_original_description')
        self.include_original_description = attributes[:'include_original_description']
      else
        self.include_original_description = false
      end

      if attributes.key?(:'include_personal_finance_category_beta')
        self.include_personal_finance_category_beta = attributes[:'include_personal_finance_category_beta']
      else
        self.include_personal_finance_category_beta = false
      end

      if attributes.key?(:'include_personal_finance_category')
        self.include_personal_finance_category = attributes[:'include_personal_finance_category']
      else
        self.include_personal_finance_category = false
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@count.nil? && @count > 500
        invalid_properties.push('invalid value for "count", must be smaller than or equal to 500.')
      end

      if !@count.nil? && @count < 1
        invalid_properties.push('invalid value for "count", must be greater than or equal to 1.')
      end


      if !@offset.nil? && @offset < 0
        invalid_properties.push('invalid value for "offset", must be greater than or equal to 0.')
      end


      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@count.nil? && @count > 500
      return false if !@count.nil? && @count < 1
      return false if !@offset.nil? && @offset < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] count Value to be assigned
    def count=(count)
      if !count.nil? && count > 500
        fail ArgumentError, 'invalid value for "count", must be smaller than or equal to 500.'
      end

      if !count.nil? && count < 1
        fail ArgumentError, 'invalid value for "count", must be greater than or equal to 1.'
      end


      @count = count
    end

    # Custom attribute writer method with validation
    # @param [Object] offset Value to be assigned
    def offset=(offset)
      if !offset.nil? && offset < 0
        fail ArgumentError, 'invalid value for "offset", must be greater than or equal to 0.'
      end


      @offset = offset
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_ids == o.account_ids &&
          count == o.count &&
          offset == o.offset &&
          include_original_description == o.include_original_description &&
          include_personal_finance_category_beta == o.include_personal_finance_category_beta &&
          include_personal_finance_category == o.include_personal_finance_category
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_ids, count, offset, include_original_description, include_personal_finance_category_beta, include_personal_finance_category].hash
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
