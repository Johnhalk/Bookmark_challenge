require 'dm-postgres-adapter'
require 'data_mapper'

require_relative 'models/link'
require_relative 'models/tags'


DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV["RACK_ENV"]}")
DataMapper.finalize
DataMapper.auto_upgrade!