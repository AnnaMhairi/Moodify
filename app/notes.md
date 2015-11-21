# #NOTES page
# KEY = n2hZ799xe2mshDybY95xJADNmyehp18Z51ejsnSXacaI02nusS

# # These code snippets use an open-source library. http://unirest.io/ruby

# #GET definition
# https://twinword-sentiment-analysis.p.mashape.com/analyze/

# #request example
# response = Unirest.get "https://twinword-sentiment-analysis.p.mashape.com/analyze/?text=great+value+in+its+price+range!",
#   headers:{
#     "X-Mashape-Key" => "Oxd6MiacN7mshMgEA1nrbEnum25ap1i6XRVjsnx5vbgUitUdpq",
#     "Accept" => "application/json"
#   }

# #response example
# {
#   "type": "positive",
#   "score": 0.375758241,
#   "result_code": "200",
#   "result_msg": "Success"
# }
# -----
# POST
# # These code snippets use an open-source library.
# response = Unirest.post "https://twinword-sentiment-analysis.p.mashape.com/analyze/",
#   headers:{
#     "X-Mashape-Key" => "Oxd6MiacN7mshMgEA1nrbEnum25ap1i6XRVjsnx5vbgUitUdpq",
#     "Content-Type" => "application/x-www-form-urlencoded",
#     "Accept" => "application/json"
#   },
#   parameters:{
#     "text" => "great value in its price range!"
#   }

#   {
#   "type": "positive",
#   "score": 0.375758241,
#   "result_code": "200",
#   "result_msg": "Success"
# }