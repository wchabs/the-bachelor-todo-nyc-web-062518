def get_first_name_of_season_winner(data, season)
  data.each do |season_key, contestants|
    if season_key.to_s == season
      contestants.each do |contestant_hash|
        if contestant_hash.values.include?("Winner")
          temp_name_array = contestant_hash["name"].split(" ")
          return temp_name_array[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash.values.include?(occupation)
        return contestant_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash.values.include?(hometown)
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash.values.include?(hometown)
        return contestant_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_array = []
  
  data.each do |season_key, contestants|
    if season_key.to_s == season
      contestants.each do |contestant_hash|
        age_array << contestant_hash["age"]
        #total_ages += contestant_hash|"age"|
      end
    end
  end
  
  total_ages = 0
  age_array.each do |num|
    total_ages += num.to_f
  end
  
  num_of_contestants = age_array.length
  average_age = total_ages / num_of_contestants
  average_age.round(0)
end


