require "faker"
require "json"
require "sinatra"

before do
  content_type :json
end

post "/" do
  puts params.inspect
  sources = []
  rand(1..5).times do
    sources << Faker::Internet.url(host: "markdown")
  end

  {
    chat_id: params[:chat_id],
    answer: Faker::Markdown.sandwich,
    sources: sources
  }.to_json
end
