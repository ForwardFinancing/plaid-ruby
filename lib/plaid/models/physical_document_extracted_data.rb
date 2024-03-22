=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.503.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0

=end

require 'date'
require 'time'

module Plaid
  # Data extracted from a user-submitted document.
  class PhysicalDocumentExtractedData
    # Alpha-numeric ID number extracted via OCR from the user's document image.
    attr_accessor :id_number

    attr_accessor :category

    # A date in the format YYYY-MM-DD (RFC 3339 Section 5.6).
    attr_accessor :expiration_date

    # Valid, capitalized, two-letter ISO code representing the country of this object. Must be in ISO 3166-1 alpha-2 form.
    attr_accessor :issuing_country

    # An ISO 3166-2 subdivision code. Related terms would be \"state\", \"province\", \"prefecture\", \"zone\", \"subdivision\", etc.
    attr_accessor :issuing_region

    # A date extracted from the document in the format YYYY-MM-DD (RFC 3339 Section 5.6).
    attr_accessor :date_of_birth

    attr_accessor :address

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
        :'id_number' => :'id_number',
        :'category' => :'category',
        :'expiration_date' => :'expiration_date',
        :'issuing_country' => :'issuing_country',
        :'issuing_region' => :'issuing_region',
        :'date_of_birth' => :'date_of_birth',
        :'address' => :'address'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id_number' => :'String',
        :'category' => :'PhysicalDocumentCategory',
        :'expiration_date' => :'Date',
        :'issuing_country' => :'String',
        :'issuing_region' => :'String',
        :'date_of_birth' => :'Date',
        :'address' => :'IdentityVerificationDocumentAddressResponse'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'id_number',
        :'expiration_date',
        :'issuing_region',
        :'date_of_birth',
        :'address'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::PhysicalDocumentExtractedData` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::PhysicalDocumentExtractedData`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id_number')
        self.id_number = attributes[:'id_number']
      end

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'expiration_date')
        self.expiration_date = attributes[:'expiration_date']
      end

      if attributes.key?(:'issuing_country')
        self.issuing_country = attributes[:'issuing_country']
      end

      if attributes.key?(:'issuing_region')
        self.issuing_region = attributes[:'issuing_region']
      end

      if attributes.key?(:'date_of_birth')
        self.date_of_birth = attributes[:'date_of_birth']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @category.nil?
        invalid_properties.push('invalid value for "category", category cannot be nil.')
      end

      if @issuing_country.nil?
        invalid_properties.push('invalid value for "issuing_country", issuing_country cannot be nil.')
      end

      if @issuing_country.to_s.length < 2
        invalid_properties.push('invalid value for "issuing_country", the character length must be great than or equal to 2.')
      end


      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @category.nil?
      return false if @issuing_country.nil?
      return false if @issuing_country.to_s.length < 2
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] issuing_country Value to be assigned
    def issuing_country=(issuing_country)
      if issuing_country.nil?
        fail ArgumentError, 'issuing_country cannot be nil'
      end

      if issuing_country.to_s.length < 2
        fail ArgumentError, 'invalid value for "issuing_country", the character length must be great than or equal to 2.'
      end


      @issuing_country = issuing_country
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id_number == o.id_number &&
          category == o.category &&
          expiration_date == o.expiration_date &&
          issuing_country == o.issuing_country &&
          issuing_region == o.issuing_region &&
          date_of_birth == o.date_of_birth &&
          address == o.address
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id_number, category, expiration_date, issuing_country, issuing_region, date_of_birth, address].hash
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
