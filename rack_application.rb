class RackApplication
    
    def call(req) #req is a hash
        #received a request which we turn into an object so we can check the path
        request = Rack::Request.new(req)
        #notice this is an instance method because of the .new
        res = Rack::Response.new
        #created a response object

        if request.path == "/"
            #req is a hash of a lot of information and we just care about the path that is being requested
            res.write "<h1>Hello!<h1>"
            #can add HTML
        else
            res.write "<h1>Goodbye!<h1>"
        end
        res.finish
        #saying that the response is over and to send it back to the client
    end
end