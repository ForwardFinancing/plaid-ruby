=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.431.7

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.1.0

=end

require 'date'
require 'time'

module Plaid
  # Search inputs for creating a watchlist screening
  class WatchlistScreeningRequestSearchTerms
    # ID of the associated program.
    attr_accessor :watchlist_program_id

    # The legal name of the individual being screened.
    attr_accessor :legal_name

    # A date in the format YYYY-MM-DD (RFC 3339 Section 5.6).
    attr_accessor :date_of_birth

    # The numeric or alphanumeric identifier associated with this document.
    attr_accessor :document_number

    # Valid, capitalized, two-letter ISO code representing the country of this object. Must be in ISO 3166-1 alpha-2 form.
    attr_accessor :country

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'watchlist_program_id' => :'watchlist_program_id',
        :'legal_name' => :'legal_name',
        :'date_of_birth' => :'date_of_birth',
        :'document_number' => :'document_number',
        :'country' => :'country'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'watchlist_program_id' => :'String',
        :'legal_name' => :'String',
        :'date_of_birth' => :'Date',
        :'document_number' => :'String',
        :'country' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::WatchlistScreeningRequestSearchTerms` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::WatchlistScreeningRequestSearchTerms`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'watchlist_program_id')
        self.watchlist_program_id = attributes[:'watchlist_program_id']
      end

      if attributes.key?(:'legal_name')
        self.legal_name = attributes[:'legal_name']
      end

      if attributes.key?(:'date_of_birth')
        self.date_of_birth = attributes[:'date_of_birth']
      end

      if attributes.key?(:'document_number')
        self.document_number = attributes[:'document_number']
      end

      if attributes.key?(:'country')
        self.country = attributes[:'country']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @watchlist_program_id.nil?
        invalid_properties.push('invalid value for "watchlist_program_id", watchlist_program_id cannot be nil.')
      end

      if @legal_name.nil?
        invalid_properties.push('invalid value for "legal_name", legal_name cannot be nil.')
      end

      if @legal_name.to_s.length < 1
        invalid_properties.push('invalid value for "legal_name", the character length must be great than or equal to 1.')
      end


      if !@document_number.nil? && @document_number.to_s.length < 4
        invalid_properties.push('invalid value for "document_number", the character length must be great than or equal to 4.')
      end


      if !@country.nil? && @country.to_s.length < 2
        invalid_properties.push('invalid value for "country", the character length must be great than or equal to 2.')
      end


      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @watchlist_program_id.nil?
      return false if @legal_name.nil?
      return false if @legal_name.to_s.length < 1
      return false if !@document_number.nil? && @document_number.to_s.length < 4
      return false if !@country.nil? && @country.to_s.length < 2
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] legal_name Value to be assigned
    def legal_name=(legal_name)
      if legal_name.nil?
        fail ArgumentError, 'legal_name cannot be nil'
      end

      if legal_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "legal_name", the character length must be great than or equal to 1.'
      end


      @legal_name = legal_name
    end

    # Custom attribute writer method with validation
    # @param [Object] document_number Value to be assigned
    def document_number=(document_number)
      if !document_number.nil? && document_number.to_s.length < 4
        fail ArgumentError, 'invalid value for "document_number", the character length must be great than or equal to 4.'
      end


      @document_number = document_number
    end

    # Custom attribute writer method with validation
    # @param [Object] country Value to be assigned
    def country=(country)
      if !country.nil? && country.to_s.length < 2
        fail ArgumentError, 'invalid value for "country", the character length must be great than or equal to 2.'
      end


      @country = country
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          watchlist_program_id == o.watchlist_program_id &&
          legal_name == o.legal_name &&
          date_of_birth == o.date_of_birth &&
          document_number == o.document_number &&
          country == o.country
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [watchlist_program_id, legal_name, date_of_birth, document_number, country].hash
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
