require 'generators/meatloaf'
require 'rails/generators/named_base'
require 'rails/generators/migration'

module Meatloaf
  module Generators
    class MigrationGenerator < Rails::Generators::Base
      include Rails::Generators::Migration
      extend Meatloaf::Generators::TemplatePath
      
      argument :extension_name, :type => :string, :required => true, :desc => "name of the extension"
      argument :migration_name, :type => :string, :required => true, :desc => "name of the new migration"
      
      desc "Creates a new migration for the specified extension."

      # Implement the required interface for Rails::Generators::Migration.
      # taken from http://github.com/rails/rails/blob/master/activerecord/lib/generators/active_record.rb
      def self.next_migration_number(dirname)
        if ActiveRecord::Base.timestamped_migrations
          Time.now.utc.strftime("%Y%m%d%H%M%S")
        else
          "%.3d" % (current_migration_number(dirname) + 1)
        end
      end
      
      def create_migration_file
        #file_name = @extension_name.tableize.singularize
        migration_template 'migration.rb.tt', "#{extension_name}/db/migrate/#{@migration_name}.rb"
      end
               
    end
  end
end