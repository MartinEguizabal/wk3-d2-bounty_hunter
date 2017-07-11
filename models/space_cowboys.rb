require('pg')

class SpaceCowboy
	
	attr_accessor :name, :bounty_value, :homeworld, :favourite_weapon

	def initialize(options)
		@name = options[:name]
		@bounty_value = options[:bounty_value]
		@homeworld = options[:homeworld]
		@favourite_weapon = options[:favourite_weapon]
		@id = options[:id]
	end

	def save()
		db = PG.connect(dbname: 'space_cowboys', host: 'localhost')
		sql = (
			"INSERT INTO space_cowboys
			(name, bounty_value, homeworld, favourite_weapon)
			VALUES
			('#{@name}', #{@bounty_value}, '#{@homeworld}', '#{@favourite_weapon}')
			RETURNING id;" )
		@id = db.exec(sql)[0]['id'].to_i
		db.close
	end

	def update()
		db = PG.connect(dbname:'space_cowboys', host: 'localhost')
		sql = "UPDATE space_cowboys 
			SET (name, bounty_value, homeworld, favourite_weapon) = ('#{@name}', #{@bounty_value}, '#{@homeworld}', '#{@favourite_weapon}') 
			WHERE id = #{@id};"
		db.exec(sql)
		db.close
	end

	def self.delete_all()
		db = PG.connect(dbname:'space_cowboys', host: 'localhost')
		sql = ("DELETE FROM space_cowboys")
		db.exec(sql)
		db.close
	end

	def delete()
		db = PG.connect(dbname:'space_cowboys', host: 'localhost')
		sql = ("DELETE FROM space_cowboys WHERE id = #{@id}")
		db.exec(sql)
		db.close
	end

	def self.all()
		db = PG.connect(dbname: 'space_cowboys', host: 'localhost')
		sql = ("SELECT * FROM space_cowboys;")
		space_cowboys = db.exec(sql)
		db.close
		return space_cowboys.map {|cowboy| SpaceCowboy.new(cowboy)}
	end
end