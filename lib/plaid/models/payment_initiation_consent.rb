=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.205.3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module Plaid
  # PaymentInitiationConsent defines a payment initiation consent.
  class PaymentInitiationConsent
    # The consent ID.
    attr_accessor :consent_id

    attr_accessor :status

    # Consent creation timestamp, in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format.
    attr_accessor :created_at

    # The ID of the recipient the payment consent is for.
    attr_accessor :recipient_id

    # A reference for the payment consent.
    attr_accessor :reference

    attr_accessor :constraints

    # An array of payment consent scopes.
    attr_accessor :scopes

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'consent_id' => :'consent_id',
        :'status' => :'status',
        :'created_at' => :'created_at',
        :'recipient_id' => :'recipient_id',
        :'reference' => :'reference',
        :'constraints' => :'constraints',
        :'scopes' => :'scopes'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'consent_id' => :'String',
        :'status' => :'PaymentInitiationConsentStatus',
        :'created_at' => :'Time',
        :'recipient_id' => :'String',
        :'reference' => :'String',
        :'constraints' => :'PaymentInitiationConsentConstraints',
        :'scopes' => :'Array<PaymentInitiationConsentScope>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::PaymentInitiationConsent` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::PaymentInitiationConsent`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'consent_id')
        self.consent_id = attributes[:'consent_id']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'recipient_id')
        self.recipient_id = attributes[:'recipient_id']
      end

      if attributes.key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.key?(:'constraints')
        self.constraints = attributes[:'constraints']
      end

      if attributes.key?(:'scopes')
        if (value = attributes[:'scopes']).is_a?(Array)
          self.scopes = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @consent_id.nil?
        invalid_properties.push('invalid value for "consent_id", consent_id cannot be nil.')
      end

      if @consent_id.to_s.length < 1
        invalid_properties.push('invalid value for "consent_id", the character length must be great than or equal to 1.')
      end


      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @recipient_id.nil?
        invalid_properties.push('invalid value for "recipient_id", recipient_id cannot be nil.')
      end

      if @recipient_id.to_s.length < 1
        invalid_properties.push('invalid value for "recipient_id", the character length must be great than or equal to 1.')
      end


      if @reference.nil?
        invalid_properties.push('invalid value for "reference", reference cannot be nil.')
      end

      if @constraints.nil?
        invalid_properties.push('invalid value for "constraints", constraints cannot be nil.')
      end

      if @scopes.nil?
        invalid_properties.push('invalid value for "scopes", scopes cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @consent_id.nil?
      return false if @consent_id.to_s.length < 1
      return false if @status.nil?
      return false if @created_at.nil?
      return false if @recipient_id.nil?
      return false if @recipient_id.to_s.length < 1
      return false if @reference.nil?
      return false if @constraints.nil?
      return false if @scopes.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] consent_id Value to be assigned
    def consent_id=(consent_id)
      if consent_id.nil?
        fail ArgumentError, 'consent_id cannot be nil'
      end

      if consent_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "consent_id", the character length must be great than or equal to 1.'
      end


      @consent_id = consent_id
    end

    # Custom attribute writer method with validation
    # @param [Object] recipient_id Value to be assigned
    def recipient_id=(recipient_id)
      if recipient_id.nil?
        fail ArgumentError, 'recipient_id cannot be nil'
      end

      if recipient_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "recipient_id", the character length must be great than or equal to 1.'
      end


      @recipient_id = recipient_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          consent_id == o.consent_id &&
          status == o.status &&
          created_at == o.created_at &&
          recipient_id == o.recipient_id &&
          reference == o.reference &&
          constraints == o.constraints &&
          scopes == o.scopes
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [consent_id, status, created_at, recipient_id, reference, constraints, scopes].hash
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
