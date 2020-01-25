def nyc_pigeon_organizer(data)
  puts "-----------"
  puts data
  puts "---"
  pigeons = {}
  
  data.each do |category, attributeArr|
    attributeArr.each do |attribute, names|
      names.each do |name|

        # create name if doesn't exist
        if !(pigeons.key?(name))
          pigeons[name] = {}
        end
        
        # create category if it doesn't exist
        if (!pigeons[name].key?(category))
          pigeons[name][category.to_sym] = []
        end
        
        pigeons[name][category] << attribute
      end
    end
  end
  pp pigeons
  pigeons
end
