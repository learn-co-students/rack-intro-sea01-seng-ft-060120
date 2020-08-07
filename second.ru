require 'rack'
class Myserver
    def call(env)
        return [200, {'Content-Type' => 'text/html'}, pretty_responce ]
    end
    def pretty_responce
        (Time.now.to_i % 2).zero? ? ["<em>Hellooooo</em>"] : ["<strong>Hello</strong>"]
    end
end
run Myserver.new