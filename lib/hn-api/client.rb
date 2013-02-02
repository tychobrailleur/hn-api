module HnApi
  class Client
    # Base URI for the HN API
    URI = "http://api.ihackernews.com/" unless defined? HnApi::Client::URL

    # Retrieve the latest posts from HN API, and transform into an object-like
    # response with Hashie.
    def latest
      Hashie::Mash.new(connection.get("/page").body)
    end

    private 
    # Create a new Faraday connection and memoize it.
    def connection
      @connection ||= Faraday.new(URI) do |conn|
        conn.request :json
        
        conn.response :json, :content_type => /\bjson$/
        
        conn.use :instrumentation
        conn.adapter Faraday.default_adapter
      end
    end
  end
end
