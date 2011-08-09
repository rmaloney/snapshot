   desc "Import projects." 
		task :import_projects => :environment do
			projects = File.open("projects.txt", "r").map do |line|
				client_id,title,type,contract_start,contract_end, frequency, sales_rep, ba, developer,  start_date, qa_date, end_date, changes_layout, changes_codes,  rework, notes = line.strip.split("\t")            
				Project.new(:client_id => client_id, :title => title, :project_type => project_type, :contract_start => contract_start, :contract_end => contract_end, :frequency => frequency, :sales_rep => :sales_rep, :ba => ba, :developer => developer, :start_date => dtart_date, :qa_date => qa_date,  :end_date => :end_date, :changes_layout => changes_layout, :changes_codes => changes_codes,  :rework => rework, :issue => issue :notes => notes)
			end
		end
	Project.import projects
  end
  
  #run this task to load a file mapping user_ids to clients. Pass it a text file with the columns user_id and name
  
  desc "Import clients"
  	task :import_clients => :environment do
  		clients = File.open("clients.txt", "r").map do |line|
  			user_id, name = line.strip.split("\t")
  			Client.new(:user_id => user_id, :name => name)
  		end
	end
  	Client.import clients
  end