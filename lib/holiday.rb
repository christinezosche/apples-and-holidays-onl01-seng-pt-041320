require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash.each do |season_key, holiday_details_hash|
  if season_key == season
    holiday_details_hash[:holiday_name] = supply_array
  end
end

holiday_hash
end


def all_winter_holiday_supplies(holiday_hash)
  winter_hash = holiday_hash[:winter]
  winter_hash.values.flatten

end



def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |key, holiday_details_hash|
      puts key.to_s.capitalize! + ":"
    
    holiday_details_hash.each do |holiday_key, array|
      if holiday_key == :new_years || :fourth_of_july || :memorial_day
        puts holiday_key.to_s.split("_").each{|word|
          word.capitalize!}.join(" ") + ": " + array.join(", ")
      else
        puts holiday_key.to_s.capitalize! + ": " + array.join(", ")
      end
      
    end
  end  

end



def all_holidays_with_bbq(holiday_hash)
  holiday_keys = []
  holiday_hash.each do |season, holiday_details_hash|
    holiday_details_hash.each do |holiday_key, array|
      if array.include?("BBQ")
        holiday_keys << holiday_key
      end
    end
  end
holiday_keys
end








