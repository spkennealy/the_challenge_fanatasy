json.artists do
    json.set! @artist.id do
        json.extract! challenger, :first_name, :last_name, :original_show, :total_seasons, :total_wins
        # json.challengerPhoto url_for(challenger.challenger_photo)
        # json.backgroundPhoto url_for(@artist.background_photo)
        # json.followed @followed
    end
end