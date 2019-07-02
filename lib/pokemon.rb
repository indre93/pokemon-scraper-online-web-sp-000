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
    sql = INSERT INTO pokemon (name, type, db) VALUES (?,?,?)
    db.execute(sql, self.name, self.type)
    @id = db.execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end

  def self.find

  end

end
