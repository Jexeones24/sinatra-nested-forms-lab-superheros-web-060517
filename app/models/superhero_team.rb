class SuperheroTeam

  attr_reader :name, :motto, :members

  @@all = []

  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
    @members = []
    @@all << self
    self.make_heroes(params[:members])
    #binding.pry
  end

  def self.all
    @@all
  end

  def make_heroes(params) #array of hashes
    params.each do |param| #param is a hash
      @members << Superhero.new(param)
      #binding.pry
    end
  end

end
