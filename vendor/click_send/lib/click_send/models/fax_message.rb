# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class FaxMessage < BaseModel
    # Your method of sending e.g. 'wordpress', 'php', 'c#'.
    # @return [String]
    attr_accessor :source

    # Recipient fax number in E.164 format.
    # @return [String]
    attr_accessor :to

    # Your list ID if sending to a whole list. Can be used instead of 'to'.
    # @return [Integer]
    attr_accessor :list_id

    # Your sender id. Must be a valid fax number.
    # @return [String]
    attr_accessor :from

    # Leave blank for immediate delivery. Your schedule time in unix format http://help.clicksend.com/what-is-a-unix-timestamp
    # @return [Integer]
    attr_accessor :schedule

    # Your reference. Will be passed back with all replies and delivery reports.
    # @return [String]
    attr_accessor :custom_string

    # Recipient country.
    # @return [String]
    attr_accessor :country

    # An email address where the reply should be emailed to.
    # @return [String]
    attr_accessor :from_email

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["source"] = "source"
        @hash["to"] = "to"
        @hash["list_id"] = "list_id"
        @hash["from"] = "from"
        @hash["schedule"] = "schedule"
        @hash["custom_string"] = "custom_string"
        @hash["country"] = "country"
        @hash["from_email"] = "from_email"
      end
      @hash
    end

    def initialize(source = nil,
                   to = nil,
                   list_id = nil,
                   from = nil,
                   schedule = nil,
                   custom_string = nil,
                   country = nil,
                   from_email = nil)
      @source = source
      @to = to
      @list_id = list_id
      @from = from
      @schedule = schedule
      @custom_string = custom_string
      @country = country
      @from_email = from_email
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        source = hash["source"]
        to = hash["to"]
        list_id = hash["list_id"]
        from = hash["from"]
        schedule = hash["schedule"]
        custom_string = hash["custom_string"]
        country = hash["country"]
        from_email = hash["from_email"]

        # Create object from extracted values
        FaxMessage.new(source,
                       to,
                       list_id,
                       from,
                       schedule,
                       custom_string,
                       country,
                       from_email)
      end
    end
  end
end
