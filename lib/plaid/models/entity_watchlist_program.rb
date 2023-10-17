=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.457.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.1.0

=end

require 'date'
require 'time'

module Plaid
  # A program that configures the active lists, search parameters, and other behavior for initial and ongoing screening of entities.
  class EntityWatchlistProgram
    # ID of the associated entity program.
    attr_accessor :id

    # An ISO8601 formatted timestamp.
    attr_accessor :created_at

    # Indicator specifying whether the program is enabled and will perform daily rescans.
    attr_accessor :is_rescanning_enabled

    # Watchlists enabled for the associated program
    attr_accessor :lists_enabled

    # A name for the entity program to define its purpose. For example, \"High Risk Organizations\" or \"Applicants\".
    attr_accessor :name

    attr_accessor :name_sensitivity

    attr_accessor :audit_trail

    # Archived programs are read-only and cannot screen new customers nor participate in ongoing monitoring.
    attr_accessor :is_archived

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'created_at' => :'created_at',
        :'is_rescanning_enabled' => :'is_rescanning_enabled',
        :'lists_enabled' => :'lists_enabled',
        :'name' => :'name',
        :'name_sensitivity' => :'name_sensitivity',
        :'audit_trail' => :'audit_trail',
        :'is_archived' => :'is_archived'
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
        :'is_rescanning_enabled' => :'Boolean',
        :'lists_enabled' => :'Array<EntityWatchlistCode>',
        :'name' => :'String',
        :'name_sensitivity' => :'ProgramNameSensitivity',
        :'audit_trail' => :'WatchlistScreeningAuditTrail',
        :'is_archived' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::EntityWatchlistProgram` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::EntityWatchlistProgram`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'is_rescanning_enabled')
        self.is_rescanning_enabled = attributes[:'is_rescanning_enabled']
      end

      if attributes.key?(:'lists_enabled')
        if (value = attributes[:'lists_enabled']).is_a?(Array)
          self.lists_enabled = value
        end
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'name_sensitivity')
        self.name_sensitivity = attributes[:'name_sensitivity']
      end

      if attributes.key?(:'audit_trail')
        self.audit_trail = attributes[:'audit_trail']
      end

      if attributes.key?(:'is_archived')
        self.is_archived = attributes[:'is_archived']
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

      if @is_rescanning_enabled.nil?
        invalid_properties.push('invalid value for "is_rescanning_enabled", is_rescanning_enabled cannot be nil.')
      end

      if @lists_enabled.nil?
        invalid_properties.push('invalid value for "lists_enabled", lists_enabled cannot be nil.')
      end


      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @name.to_s.length < 1
        invalid_properties.push('invalid value for "name", the character length must be great than or equal to 1.')
      end


      if @name_sensitivity.nil?
        invalid_properties.push('invalid value for "name_sensitivity", name_sensitivity cannot be nil.')
      end

      if @audit_trail.nil?
        invalid_properties.push('invalid value for "audit_trail", audit_trail cannot be nil.')
      end

      if @is_archived.nil?
        invalid_properties.push('invalid value for "is_archived", is_archived cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @created_at.nil?
      return false if @is_rescanning_enabled.nil?
      return false if @lists_enabled.nil?
      return false if @name.nil?
      return false if @name.to_s.length < 1
      return false if @name_sensitivity.nil?
      return false if @audit_trail.nil?
      return false if @is_archived.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] lists_enabled Value to be assigned
    def lists_enabled=(lists_enabled)
      if lists_enabled.nil?
        fail ArgumentError, 'lists_enabled cannot be nil'
      end


      @lists_enabled = lists_enabled
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length < 1
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 1.'
      end


      @name = name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          created_at == o.created_at &&
          is_rescanning_enabled == o.is_rescanning_enabled &&
          lists_enabled == o.lists_enabled &&
          name == o.name &&
          name_sensitivity == o.name_sensitivity &&
          audit_trail == o.audit_trail &&
          is_archived == o.is_archived
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, created_at, is_rescanning_enabled, lists_enabled, name, name_sensitivity, audit_trail, is_archived].hash
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
