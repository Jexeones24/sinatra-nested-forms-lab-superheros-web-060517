class Superhero

  attr_reader :name, :power, :bio

  @@all = []

  def initialize(params)
    #binding.pry
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    @@all << self
  end

  def self.all
    @@all
  end

end
