class ChooseoneValidate
    def initialize(app)
        @app = app
    end
  
    def call(env)
        request = Rack::Request.new(env)
        if env['REQUEST_PATH'] =~ /^\/chooseone/ and
            (request.params['token'] != ENV['SLACK_TOKEN'] or ENV['SLACK_TOKEN'].nil?)

            [401, {"Content-Type" => "text/html"}, ["Slack Token invalid. Check configuration"]]
        else
            @app.call(env) 
        end
    end
end