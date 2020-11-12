require_relative "block"
module Notion
    attr_reader :token_v2
    class Client < Block
        def initialize(token_v2)
            @token_v2 = token_v2
        end
    end
end


@client = Notion::Client.new(ENV["token_v2"])
# options for request
options = {}
options["cookies"] = {:token_v2 => ENV["token_v2"]}
options["headers"] = {'Content-Type' => 'application/json'}

@block = @client.get_block(url_or_id="7375d19c-f163-453e-bb87-2ad863934f8c", options)
@block.title = "Econometrics"


# children_ids = @client.get_block_children_ids(url_or_id="https://www.notion.so/danmurphy/Generic-Linux-CLI-24bb8c43a6c44561a5f5919d4bd86013", options)
# p children_ids
# all_page_ids = []
# children_ids.each do |id|
#     block = @client.get_block(id, options=options)[0]
#     all_page_ids.push(@client.get_block_children_ids(block, options=options))
# end

# all_page_ids.flatten.each do |id|
#     p @client.get_block(id, options=options)
# end