require 'generators/meatloaf'
require 'rails/generators/named_base'
#require 'rails/generators/rails/plugin/plugin_generator'

module Meatloaf
  module Generators
    class ExtensionGenerator < Rails::Generators::NamedBase
      extend Meatloaf::Generators::TemplatePath
      
      desc "Creates a new extension with the name you specify."
      check_class_collision
                                                 
      def create_root_files                                                    
        empty_directory file_name        
        template "LICENSE", "#{file_name}/LICENSE"
        template "Rakefile", "#{file_name}/Rakefile"
        template "README.md", "#{file_name}/README.md"
        template ".gitignore", "#{file_name}/.gitignore"
      end      

      def create_app_dirs                   
        empty_directory extension_dir('app')
        empty_directory extension_dir('app/controllers')  
        empty_directory extension_dir('app/helpers')  
        empty_directory extension_dir('app/metal')
        empty_directory extension_dir('app/models')
        empty_directory extension_dir('app/views')
      end   

      def create_config_files                       
        directory "config", "#{file_name}/config"
        empty_directory extension_dir('config/initializers')
      end
      
      def create_lib_files                   
        empty_directory extension_dir("lib/tasks")
        template 'extension/engine.rb.tt', "#{file_name}/lib/#{file_name}/engine.rb"
        template 'extension/extension.rb.tt', "#{file_name}/lib/#{file_name}.rb"                  
      end            

      protected                       
      
      def current_locale
        I18n.locale.to_s
      end
      
      def extension_dir(join=nil)
        if join
          File.join(file_name, join)
        else
          file_name
        end
      end

    end
  end
end