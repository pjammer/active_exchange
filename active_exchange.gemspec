# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{active_exchange}
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["pjammer"]
  s.date = %q{2010-10-20}
  s.description = %q{Foreign Exchange for your Rails app.}
  s.email = %q{philipjingram@yahoo.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "active_exchange.gemspec",
     "app/models/exchange_rate.rb",
     "db/migrate/20091021192708_create_exchange_rates.rb",
     "lib/active_exchange.rb",
     "tasks/daily_exchange_rates.rake",
     "test/helper.rb",
     "test/test_active_exchange.rb"
  ]
  s.homepage = %q{http://github.com/pjammer/active_exchange}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Foreign Exchange for your Rails app}
  s.test_files = [
    "test/helper.rb",
     "test/test_active_exchange.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

