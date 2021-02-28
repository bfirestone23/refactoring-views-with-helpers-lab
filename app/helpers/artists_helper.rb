module ArtistsHelper

    def display_artist(song)
        s = Song.find(song.id)
        if s.artist.present?
            link_to "#{s.artist.name}", artist_path(s.artist)
        else
            link_to "Add Artist", edit_song_path(s)
        end
    end

end
