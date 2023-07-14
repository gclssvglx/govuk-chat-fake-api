require "sinatra"
require "json"

before do
  content_type :json
end

post "/" do
  puts params.inspect
  {
    chat_id: params[:chat_id],
    answer: "Mickey Mouse is an American cartoon character co-created in 1928 by Walt Disney and Ub Iwerks. The longtime mascot of The Walt Disney Company, Mickey is an anthropomorphic mouse who typically wears red shorts, large yellow shoes, and white gloves.",
    sources: ["https://en.wikipedia.org/wiki/Mickey_Mouse", "https://en.wikipedia.org/wiki/Walt_Disney"]
  }.to_json
end
