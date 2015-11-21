get '/' do
  erb :index
end

post '/' do
  url = URI.parse("https://musixmatchcom-musixmatch.p.mashape.com/wsr/1.1/matcher.lyrics.get")
  url.query = {
    q_artist: params[:artist],
    q_track: params[:song],
  }.to_param

  response = Unirest::get(url.to_s, headers:{
    "X-Mashape-Key" => ENV['MASHAPE_KEY'],
    "Accept" => "application/json",
  })

  content_type :json
  response.body.to_json
end

#first need to get the lyrics then do the t-s analysis

# get '/analyze/' do
#   response = Unirest.get "https://twinword-sentiment-analysis.p.mashape.com/analyze/?text=great+value+in+its+price+range!",
#   headers:{
#     "X-Mashape-Key" => ENV['SECRET_KEY'],
#     "Accept" => "application/json"
#     }
#   content_type :json
#   #not sure where to include the parsing
#   jhash = JSON.parse(response)

#   erb: analyze
# end

# post '/analyze/' do

#   response = Unirest.post "https://twinword-sentiment-analysis.p.mashape.com/analyze/",
#   headers:{
#     "X-Mashape-Key" => ENV['SECRET_KEY'],
#     "Content-Type" => "application/x-www-form-urlencoded",
#     "Accept" => "application/json"
#   },
#   parameters:{
#     "text" => "great value in its price range!"
#   }
#   content_type :json
#   jhash = JSON.parse(response)

# end