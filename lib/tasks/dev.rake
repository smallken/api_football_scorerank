namespace :dev do
  task :fetch_scorerank => :environment do
    puts "Fetch scorerank data..."
    response = RestClient.get "http://v.juhe.cn/football/scorerank.php", :params => { :key => "5a24681a17011d0d74229ed30f13fd77" }
    data = JSON.parse(response.body)

    data.each do |s|
      existing_scorerank = Scorerank.find_by_juhe_id( s["id"] )
      if existing_scorerank.nil?
        Scorerank.create!( :scorerank_id => s["id"], :league_id => s["league_id"],
        :team_group => s["team_group"], :team_id => s["team_id"])

      end
    end

    puts "Total: #{Scorerank.count} cities"
  end
end
