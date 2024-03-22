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
  # The request was flagged by Plaid's fraud system, and requires additional verification to ensure they are not a bot.
  class RecaptchaRequiredError
    # RECAPTCHA_ERROR
    attr_accessor :error_type

    # RECAPTCHA_REQUIRED
    attr_accessor :error_code

    attr_accessor :display_message

    # 400
    attr_accessor :http_code

    # Your user will be prompted to solve a Google reCAPTCHA challenge in the Link Recaptcha pane. If they solve the challenge successfully, the user's request is resubmitted and they are directed to the next Item creation step.
    attr_accessor :link_user_experience

    # Plaid's fraud system detects abusive traffic and considers a variety of parameters throughout Item creation requests. When a request is considered risky or possibly fraudulent, Link presents a reCAPTCHA for the user to solve.
    attr_accessor :common_causes

    # Link will automatically guide your user through reCAPTCHA verification. As a general rule, we recommend instrumenting basic fraud monitoring to detect and protect your website from spam and abuse.  If your user cannot verify their session, please submit a Support ticket with the following identifiers: `link_session_id` or `request_id`
    attr_accessor :troubleshooting_steps

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'error_type' => :'error_type',
        :'error_code' => :'error_code',
        :'display_message' => :'display_message',
        :'http_code' => :'http_code',
        :'link_user_experience' => :'link_user_experience',
        :'common_causes' => :'common_causes',
        :'troubleshooting_steps' => :'troubleshooting_steps'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'error_type' => :'String',
        :'error_code' => :'String',
        :'display_message' => :'String',
        :'http_code' => :'String',
        :'link_user_experience' => :'String',
        :'common_causes' => :'String',
        :'troubleshooting_steps' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::RecaptchaRequiredError` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::RecaptchaRequiredError`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'error_type')
        self.error_type = attributes[:'error_type']
      end

      if attributes.key?(:'error_code')
        self.error_code = attributes[:'error_code']
      end

      if attributes.key?(:'display_message')
        self.display_message = attributes[:'display_message']
      end

      if attributes.key?(:'http_code')
        self.http_code = attributes[:'http_code']
      end

      if attributes.key?(:'link_user_experience')
        self.link_user_experience = attributes[:'link_user_experience']
      end

      if attributes.key?(:'common_causes')
        self.common_causes = attributes[:'common_causes']
      end

      if attributes.key?(:'troubleshooting_steps')
        self.troubleshooting_steps = attributes[:'troubleshooting_steps']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @error_type.nil?
        invalid_properties.push('invalid value for "error_type", error_type cannot be nil.')
      end

      if @error_code.nil?
        invalid_properties.push('invalid value for "error_code", error_code cannot be nil.')
      end

      if @display_message.nil?
        invalid_properties.push('invalid value for "display_message", display_message cannot be nil.')
      end

      if @http_code.nil?
        invalid_properties.push('invalid value for "http_code", http_code cannot be nil.')
      end

      if @link_user_experience.nil?
        invalid_properties.push('invalid value for "link_user_experience", link_user_experience cannot be nil.')
      end

      if @common_causes.nil?
        invalid_properties.push('invalid value for "common_causes", common_causes cannot be nil.')
      end

      if @troubleshooting_steps.nil?
        invalid_properties.push('invalid value for "troubleshooting_steps", troubleshooting_steps cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @error_type.nil?
      return false if @error_code.nil?
      return false if @display_message.nil?
      return false if @http_code.nil?
      return false if @link_user_experience.nil?
      return false if @common_causes.nil?
      return false if @troubleshooting_steps.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          error_type == o.error_type &&
          error_code == o.error_code &&
          display_message == o.display_message &&
          http_code == o.http_code &&
          link_user_experience == o.link_user_experience &&
          common_causes == o.common_causes &&
          troubleshooting_steps == o.troubleshooting_steps
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [error_type, error_code, display_message, http_code, link_user_experience, common_causes, troubleshooting_steps].hash
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
