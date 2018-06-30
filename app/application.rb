class Application
  def call(env)
    resp = Rack::Response.new 
    time = Time.now 
    case Time.now.hour 
      when < 12 
        resp.write "Good Morning!"
      end
      when > 12 
        resp.write "Good Afternoon!"
      end
    end
    resp.finish
  end
end