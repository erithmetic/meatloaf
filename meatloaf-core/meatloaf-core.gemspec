# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{meatloaf-core}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.date = %q{2010-04-21}
  s.files = [
    "app/controllers/orders_controller.rb",
     "app/views/orders/index.html.erb",
     "config/routes.rb",
     "lib/meatloaf_core.rb",
     "lib/meatloaf_core/engine.rb"
  ]
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Test Framework Engine for Rails 3}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<inherited_resources>, [">= 1.1.2"])
    else
      s.add_dependency(%q<inherited_resources>, [">= 1.1.2"])
    end
  else
    s.add_dependency(%q<inherited_resources>, [">= 1.1.2"])
  end
end

