require_relative './config/environment'

run RackApplication.new
#expects an argument that is an object that has a call method 
#two options are to pass the whole class or instance method so would add .new to the above
#if in RackApplication the call method is an instance method, then run needs to be an instance method so would add .new to the above
#if in RackApplication the call method is a class method, then you would remove .new from the above