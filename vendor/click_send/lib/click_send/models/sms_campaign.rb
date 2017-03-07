# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class SmsCampaign < BaseModel
    # Your list id.
    # @return [Object]
    attr_accessor :list_id

    # Your campaign name.
    # @return [String]
    attr_accessor :name

    # Your campaign message.
    # @return [String]
    attr_accessor :body

    # Your schedule timestamp.
    # @return [String]
    attr_accessor :schedule

    # Your sender id - more info: http://help.clicksend.com/SMS/what-is-a-sender-id-or-sender-number.
    # @return [String]
    attr_accessor :from

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["list_id"] = "list_id"
        @hash["name"] = "name"
        @hash["body"] = "body"
        @hash["schedule"] = "schedule"
        @hash["from"] = "from"
      end
      @hash
    end

    def initialize(list_id = nil,
                   name = nil,
                   body = nil,
                   schedule = nil,
                   from = nil)
      @list_id = list_id
      @name = name
      @body = body
      @schedule = schedule
      @from = from
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        list_id = hash["list_id"]
        name = hash["name"]
        body = hash["body"]
        schedule = hash["schedule"]
        from = hash["from"]

        # Create object from extracted values
        SmsCampaign.new(list_id,
                        name,
                        body,
                        schedule,
                        from)
      end
    end
  end
end
