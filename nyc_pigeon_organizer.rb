def nyc_pigeon_organizer(data)
  puts "-----------"
  pigeons = {}
  
  data.each do |category, attribute|
    attribute.each do |name|
      
      # create name if doesn't exist
      if !(pigeons.key?(name))
        pigeons[name] = {}
      end
      
      # create category if it doesn't exist
      if (!pigeons[name].key?(category))
        pigeons[name][category] = []
      end
      
      pigeons[name][category] << attribute
    end
  end
  pp pigeons
  pigeons
end
