namespace :active_exchange do
   desc "Go out to Xavier and get the Exchange Data for Today and put it into the ExchangeRate db"
   task :daily_seed => :environment do
     ActiveExchange.get_daily_data
   end
  
   desc "Sync migration files into existing RAILS app - to be done inside rails apps."
   task :sync do
     system "rsync -ruv #{File.expand_path(File.dirname(__FILE__) + "/db/migrate")} #{RAILS.root}/db"
   end
end