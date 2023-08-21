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
  # A Beacon User represents an end user that has been scanned against the Beacon Network.
  class BeaconUserGetResponse
    # ID of the associated Beacon User.
    attr_accessor :id

    # An ISO8601 formatted timestamp.
    attr_accessor :created_at

    # An ISO8601 formatted timestamp. This field indicates the last time the resource was modified.
    attr_accessor :updated_at

    attr_accessor :status

    # ID of the associated Beacon Program.
    attr_accessor :program_id

    # A unique ID that identifies the end user in your system. This ID can also be used to associate user-specific data from other Plaid products. Financial Account Matching requires this field and the `/link/token/create` `client_user_id` to be consistent. Personally identifiable information, such as an email address or phone number, should not be used in the `client_user_id`.
    attr_accessor :client_user_id

    attr_accessor :user

    attr_accessor :audit_trail

    # A unique identifier for the request, which can be used for troubleshooting. This identifier, like all Plaid identifiers, is case sensitive.
    attr_accessor :request_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'status' => :'status',
        :'program_id' => :'program_id',
        :'client_user_id' => :'client_user_id',
        :'user' => :'user',
        :'audit_trail' => :'audit_trail',
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
        :'id' => :'String',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'status' => :'BeaconUserStatus',
        :'program_id' => :'String',
        :'client_user_id' => :'String',
        :'user' => :'BeaconUserData',
        :'audit_trail' => :'BeaconAuditTrail',
        :'request_id' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::BeaconUserGetResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::BeaconUserGetResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'program_id')
        self.program_id = attributes[:'program_id']
      end

      if attributes.key?(:'client_user_id')
        self.client_user_id = attributes[:'client_user_id']
      end

      if attributes.key?(:'user')
        self.user = attributes[:'user']
      end

      if attributes.key?(:'audit_trail')
        self.audit_trail = attributes[:'audit_trail']
      end

      if attributes.key?(:'request_id')
        self.request_id = attributes[:'request_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @program_id.nil?
        invalid_properties.push('invalid value for "program_id", program_id cannot be nil.')
      end

      if @client_user_id.nil?
        invalid_properties.push('invalid value for "client_user_id", client_user_id cannot be nil.')
      end

      if @client_user_id.to_s.length < 1
        invalid_properties.push('invalid value for "client_user_id", the character length must be great than or equal to 1.')
      end


      if @user.nil?
        invalid_properties.push('invalid value for "user", user cannot be nil.')
      end

      if @audit_trail.nil?
        invalid_properties.push('invalid value for "audit_trail", audit_trail cannot be nil.')
      end

      if @request_id.nil?
        invalid_properties.push('invalid value for "request_id", request_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @created_at.nil?
      return false if @updated_at.nil?
      return false if @status.nil?
      return false if @program_id.nil?
      return false if @client_user_id.nil?
      return false if @client_user_id.to_s.length < 1
      return false if @user.nil?
      return false if @audit_trail.nil?
      return false if @request_id.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] client_user_id Value to be assigned
    def client_user_id=(client_user_id)
      if client_user_id.nil?
        fail ArgumentError, 'client_user_id cannot be nil'
      end

      if client_user_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "client_user_id", the character length must be great than or equal to 1.'
      end


      @client_user_id = client_user_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          status == o.status &&
          program_id == o.program_id &&
          client_user_id == o.client_user_id &&
          user == o.user &&
          audit_trail == o.audit_trail &&
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
      [id, created_at, updated_at, status, program_id, client_user_id, user, audit_trail, request_id].hash
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
