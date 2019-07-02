class Pokemon
  attr_accessor :name, :type, :db
  attr_reader :id

  def initialize(id = nil, name = nil, type = nil, db = nil)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)

    db.execute("INSERT INTO pokemon (name, type)
    VALUES (?,?)")
  end

  def self.find

  end

end
