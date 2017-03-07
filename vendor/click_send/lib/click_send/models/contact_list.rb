# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class ContactList < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :list_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :list_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :list_email_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :contacts_count

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["list_id"] = "list_id"
        @hash["list_name"] = "list_name"
        @hash["list_email_id"] = "list_email_id"
        @hash["contacts_count"] = "contacts_count"
      end
      @hash
    end

    def initialize(list_id = nil,
                   list_name = nil,
                   list_email_id = nil,
                   contacts_count = nil)
      @list_id = list_id
      @list_name = list_name
      @list_email_id = list_email_id
      @contacts_count = contacts_count
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        list_id = hash["list_id"]
        list_name = hash["list_name"]
        list_email_id = hash["list_email_id"]
        contacts_count = hash["contacts_count"]

        # Create object from extracted values
        ContactList.new(list_id,
                        list_name,
                        list_email_id,
                        contacts_count)
      end
    end
  end
end
