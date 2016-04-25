require 'active_record'

options = {
  adapter: 'postgresql',
  database: 'snapper_db'
 
}

ActiveRecord::Base.establish_connection(options)