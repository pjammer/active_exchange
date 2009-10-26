namespace :active_exchange do
  desc "Sync migration files into existing RAILS app - to be done inside rails apps."
  task :sync do
    system "rsync -ruv #{File.expand_path(File.dirname(__FILE__) + "/db/migrate")} #{RAILS_ROOT}/db"
  end
end