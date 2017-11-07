require 'pry'

holiday_hash = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}
# Write a method that returns the second supply for the Fourth of July.

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

# Write a method that adds a supply to both Winter holidays.

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |seasons, holiday|
    holiday.each do |holiday, supplies|
      supplies << supply
    end
  end
end

# Write a method that adds a supply to Memorial Day.

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |seasons, holiday|
    holiday.each do |holiday, supplies|
      if holiday == :memorial_day
        supplies << supply
      end
    end
  end
end

# Write a method that adds a new holiday and its associated supplies to any season.

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supplies|
    end
  holiday_hash[season][holiday_name] = supply_array
 end
end

# Write a method to collect all Winter supplies from all the winter holidays.

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |holiday, supplies|
        winter_supplies << supplies
      end
    end
  end
  winter_supplies.flatten
end

# Write a method that uses a loop to list out all the supplies you have for each holiday and the season.
# Use string manipulation to get your output to match what the test is expecting.

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
  puts "#{season.to_s.capitalize!}:"
    holiday.each do |holiday,supply|
    holiday = holiday.to_s.split("_").join(" ") + ":"
      upcase_holiday = holiday.split(" ").each {|word| word.capitalize!}
      puts "  #{upcase_holiday.join(" ")} #{supply.join(", ")}"
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_names = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supplies|
      if supplies.include?("BBQ")
        holiday_names << holiday
      end        
    end
  end
  holiday_names
end
