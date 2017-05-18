REQUIRED_BAG_SIZE = 10

available_clubs = [
  :two_iron,
  :three_iron,
  :four_iron,
  :five_iron,
  :six_iron,
  :seven_iron,
  :eight_iron,
  :nine_iron,
  :pitching_wedge,
  :sand_wedge,
  :driver,
  :three_wood,
  :five_wood,
  :seven_wood,
  :putter
]
wanted_clubs = [:nine_iron, :driver, :three_wood, :five_wood]

possible_club_selections = available_clubs.sample(REQUIRED_BAG_SIZE)

# randomizes your club selection
possible_club_selections.each do |club|
  puts "Use the #{club.to_s.capitalize.gsub(/_/, ' ')}!\n"
end

wanted_clubs.each do |needed|
  if !possible_club_selections.include?(needed)
   puts "Wanted Clubs: #{needed.to_s.capitalize.gsub(/_/, ' ')}!"
  end
end
