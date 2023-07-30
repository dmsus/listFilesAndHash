require 'sinatra'
require 'base64'

get '/' do
  Dir.entries('.').map { |e| "<p>#{e + " " + myhash(e)}</p>" }
end

def myhash(element)
   Base64.encode64(element)
end
