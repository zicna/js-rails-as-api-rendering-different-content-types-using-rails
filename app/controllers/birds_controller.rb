class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    # explicitly rendering
    # render 'birds/index.html.erb'

    # plain text rendering
    # render plain: "Hello #{@birds[3].name}"

    # json rendering as string, or object
    # render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
    # render json: { message: 'Hashes of data will get converted to JSON' }
    # render json: ['As','well','as','arrays']

    render json: {birds: @birds, message: ['Hello birds', 'Goodbye Birds']}
  
  end
end
