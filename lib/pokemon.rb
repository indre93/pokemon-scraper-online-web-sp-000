class Pokemon
  attr_accessor :name, :type, :db
  attr_reader :id

  def initialize(id = nil, name, type)
    @id = id
    @name = name
    @type = type
  end

end
