require 'rack'

my_server = Proc.new do
    [200, {'Content-Type' => 'text/html'}, ['<em>Hello</em>']]
    [200, {'Content-Type' => 'text/html'}, ['<em>Can I do it like this?</em>']]
end

run my_server