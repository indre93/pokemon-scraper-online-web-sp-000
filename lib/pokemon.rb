class Pokemon
  attr_accessor :name, :type, :db
  attr_reader :id

  def initialize(keyword)

  end

  def self.save(name, type, db)
    sql = "INSERT INTO pokemon (name, type)
    VALUES (?,?)"
    db.execute(sql, self.name, self.type)
  end

  def self.find

  end

end
