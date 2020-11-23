namespace :routes do
  task :api => :environment do
    Grape::API.subclasses.each do |subclass|
      subclass.routes.each do |e|
        puts "%-10s %-6s %-24s %s" % [subclass, e.route_method, e.route_path, e.route_description]
      end
      puts
    end
  end
end
