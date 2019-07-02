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
    sql = <<-SQL
      INSERT INTO pokemon (name, type)
      VALUES (?,?)
    SQL
    DB[SQLite3::Database.new].execute(sql, self.name, self.type)
    @id = DB[SQLite3::Database.new].execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end

  def self.find

  end

end
