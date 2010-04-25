module Meatloaf
  module Generators
    module TemplatePath
      def source_root
        @_meatloaf_source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'meatloaf', generator_name, 'templates'))
      end
    end
  end
end