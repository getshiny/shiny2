# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class UploadController < BaseController
    @@instance = UploadController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Upload a file
    # @param [File] filename Required parameter: Example: 
    # @return String response from the API call
    def upload_file(filename)

      # validate required parameters
      validate_parameters({
        'filename' => filename
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/uploads'
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'filename' => filename
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 404
        return nil
      end
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end
  end
end
