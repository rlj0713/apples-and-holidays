require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # return the second element in the 4th of July array
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, array|
      if holiday == :fourth_of_july
        return array[1]
      end
    end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |holiday, array|
        array << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |holiday, array|
        array << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  holiday_hash.each do |time, holiday|
    if time == season
      holiday_hash[time][holiday_name] = supply_array
    end
  end
  puts holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  array = []
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |day, supply|
        array << supply
      end
    end
  end
  array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday, supply|
      puts "  #{holiday.to_s.split("_").collect do |name|
        name.capitalize
      end.join(" ")}: #{supply.join(", ")}"
    end
  end 
end


def all_holidays_with_bbq(holiday_hash)
  array = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, thing|
      thing.each do |item|
        if item == "BBQ"
          array << holiday
        end
      end
    end
  end
  array
end
