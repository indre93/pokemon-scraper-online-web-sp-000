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
    sql = db.execute("INSERT INTO pokemon (name, type) VALUES (?,?)")
    @id = db.execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
    sql
  end

  def self.find

  end

end
