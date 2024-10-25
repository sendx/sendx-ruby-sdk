=begin
#SendX REST API

## Introduction SendX is an email marketing product. It helps you convert website visitors to customers, send them promotional emails, engage with them using drip sequences and craft custom journeys using powerful but simple automations. The SendX API is organized around REST. Our API has predictable resource-oriented URLs, accepts form-encoded request bodies, returns JSON-encoded responses, and uses standard HTTP response codes, authentication, and verbs. The SendX Rest API doesn’t support bulk updates. You can work on only one object per request. <br> 

The version of the OpenAPI document: 1.0.1
Contact: support@sendx.io
Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

require 'date'
require 'time'

module SendX
  class CampaignRequest
    # The name of the campaign.
    attr_accessor :name

    # The HTML code of the campaign.
    attr_accessor :html_code

    # The subject of the campaign.
    attr_accessor :subject

    # Sender unique identifier.
    attr_accessor :sender

    # The preview text shown in email clients.
    attr_accessor :preview_text

    # The type of scheduling for the campaign <br> 0: Send Now <br> 1: Send Later 
    attr_accessor :schedule_type

    # The condition for scheduling the campaign.
    attr_accessor :schedule_condition

    # The specific time to send the campaign.
    attr_accessor :time_condition

    # The timezone for the campaign scheduling.
    attr_accessor :timezone

    # Preferred timezone for scheduling.
    attr_accessor :preferred_timezone

    # Specific time preference for sending the campaign.
    attr_accessor :preferred_time_condition

    # Whether to send emails in each contact's timezone.
    attr_accessor :send_in_contacts_timezone

    # Whether to enable smart send features (e.g., optimizing send time).
    attr_accessor :smart_send

    # List of segment IDs to include.
    attr_accessor :included_segments

    # List of list IDs to include.
    attr_accessor :included_lists

    # List of tag IDs to include.
    attr_accessor :included_tags

    # List of segment IDs to exclude.
    attr_accessor :excluded_segments

    # List of list IDs to exclude.
    attr_accessor :excluded_lists

    # List of tag IDs to exclude.
    attr_accessor :excluded_tags

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
        :'name' => :'name',
        :'html_code' => :'htmlCode',
        :'subject' => :'subject',
        :'sender' => :'sender',
        :'preview_text' => :'previewText',
        :'schedule_type' => :'scheduleType',
        :'schedule_condition' => :'scheduleCondition',
        :'time_condition' => :'timeCondition',
        :'timezone' => :'timezone',
        :'preferred_timezone' => :'preferredTimezone',
        :'preferred_time_condition' => :'preferredTimeCondition',
        :'send_in_contacts_timezone' => :'sendInContactsTimezone',
        :'smart_send' => :'smartSend',
        :'included_segments' => :'includedSegments',
        :'included_lists' => :'includedLists',
        :'included_tags' => :'includedTags',
        :'excluded_segments' => :'excludedSegments',
        :'excluded_lists' => :'excludedLists',
        :'excluded_tags' => :'excludedTags'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'html_code' => :'String',
        :'subject' => :'String',
        :'sender' => :'String',
        :'preview_text' => :'String',
        :'schedule_type' => :'Integer',
        :'schedule_condition' => :'String',
        :'time_condition' => :'String',
        :'timezone' => :'String',
        :'preferred_timezone' => :'String',
        :'preferred_time_condition' => :'String',
        :'send_in_contacts_timezone' => :'Boolean',
        :'smart_send' => :'Boolean',
        :'included_segments' => :'Array<String>',
        :'included_lists' => :'Array<String>',
        :'included_tags' => :'Array<String>',
        :'excluded_segments' => :'Array<String>',
        :'excluded_lists' => :'Array<String>',
        :'excluded_tags' => :'Array<String>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SendX::CampaignRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SendX::CampaignRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'html_code')
        self.html_code = attributes[:'html_code']
      end

      if attributes.key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.key?(:'sender')
        self.sender = attributes[:'sender']
      end

      if attributes.key?(:'preview_text')
        self.preview_text = attributes[:'preview_text']
      end

      if attributes.key?(:'schedule_type')
        self.schedule_type = attributes[:'schedule_type']
      end

      if attributes.key?(:'schedule_condition')
        self.schedule_condition = attributes[:'schedule_condition']
      end

      if attributes.key?(:'time_condition')
        self.time_condition = attributes[:'time_condition']
      end

      if attributes.key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end

      if attributes.key?(:'preferred_timezone')
        self.preferred_timezone = attributes[:'preferred_timezone']
      end

      if attributes.key?(:'preferred_time_condition')
        self.preferred_time_condition = attributes[:'preferred_time_condition']
      end

      if attributes.key?(:'send_in_contacts_timezone')
        self.send_in_contacts_timezone = attributes[:'send_in_contacts_timezone']
      end

      if attributes.key?(:'smart_send')
        self.smart_send = attributes[:'smart_send']
      end

      if attributes.key?(:'included_segments')
        if (value = attributes[:'included_segments']).is_a?(Array)
          self.included_segments = value
        end
      end

      if attributes.key?(:'included_lists')
        if (value = attributes[:'included_lists']).is_a?(Array)
          self.included_lists = value
        end
      end

      if attributes.key?(:'included_tags')
        if (value = attributes[:'included_tags']).is_a?(Array)
          self.included_tags = value
        end
      end

      if attributes.key?(:'excluded_segments')
        if (value = attributes[:'excluded_segments']).is_a?(Array)
          self.excluded_segments = value
        end
      end

      if attributes.key?(:'excluded_lists')
        if (value = attributes[:'excluded_lists']).is_a?(Array)
          self.excluded_lists = value
        end
      end

      if attributes.key?(:'excluded_tags')
        if (value = attributes[:'excluded_tags']).is_a?(Array)
          self.excluded_tags = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      schedule_type_validator = EnumAttributeValidator.new('Integer', [0, 1])
      return false unless schedule_type_validator.valid?(@schedule_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] schedule_type Object to be assigned
    def schedule_type=(schedule_type)
      validator = EnumAttributeValidator.new('Integer', [0, 1])
      unless validator.valid?(schedule_type)
        fail ArgumentError, "invalid value for \"schedule_type\", must be one of #{validator.allowable_values}."
      end
      @schedule_type = schedule_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          html_code == o.html_code &&
          subject == o.subject &&
          sender == o.sender &&
          preview_text == o.preview_text &&
          schedule_type == o.schedule_type &&
          schedule_condition == o.schedule_condition &&
          time_condition == o.time_condition &&
          timezone == o.timezone &&
          preferred_timezone == o.preferred_timezone &&
          preferred_time_condition == o.preferred_time_condition &&
          send_in_contacts_timezone == o.send_in_contacts_timezone &&
          smart_send == o.smart_send &&
          included_segments == o.included_segments &&
          included_lists == o.included_lists &&
          included_tags == o.included_tags &&
          excluded_segments == o.excluded_segments &&
          excluded_lists == o.excluded_lists &&
          excluded_tags == o.excluded_tags
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, html_code, subject, sender, preview_text, schedule_type, schedule_condition, time_condition, timezone, preferred_timezone, preferred_time_condition, send_in_contacts_timezone, smart_send, included_segments, included_lists, included_tags, excluded_segments, excluded_lists, excluded_tags].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
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
        klass = SendX.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
