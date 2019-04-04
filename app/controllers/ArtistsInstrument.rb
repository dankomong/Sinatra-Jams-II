class ArtistsInstrumentsController < ApplicationController

  get '/artists_instruments/new' do
    @artists = Artist.all
    @instruments = Instrument.all

    erb :'/artists_instruments/new'
  end

  post '/artists_instruments' do
    @artist_instrument = ArtistInstrument.create(artist_id: params[:artist_id], instrument_id: params[:instrument_id])
    redirect to '/artists'
  end

end
