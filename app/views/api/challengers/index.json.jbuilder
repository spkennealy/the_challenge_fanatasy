@challengers.each do |challenger|
    json.set! challenger.id do
        json.extract! challenger, :first_name, :last_name, :original_show, :total_seasons, :total_wins
        # json.challengerPhoto url_for(challenger.challenger_photo)
    end
end