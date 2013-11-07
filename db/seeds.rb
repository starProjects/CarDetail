# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
State.delete_all
states = 
    [
      ['AL','Alabama',1],
      ['AK','Alaska',1],
      ['AZ','Arizona',1],
      ['AR','Arkansas',1],
      ['CA','California',1],
      ['CO','Colorado',1],
      ['CT','Connecticut',1],
      ['DE','Delaware',1],
      ['DC','District of Columbia',1],
      ['FL','Florida',1],
      ['GA','Georgia',1],
      ['HI','Hawaii',1],
      ['ID','Idaho',1],
      ['IL','Illinois',],
      ['IN','Indiana',1],
      ['IA','Iowa',1],
      ['KS','Kansas',1],
      ['KY','Kentucky',1],
      ['LA','Louisiana',1],
      ['ME','Maine',1],
      ['MD','Maryland',1],
      ['MA','Massachutsetts',1],
      ['MI','Michigan',1],
      ['MN','Minnesota',1],
      ['MS','Mississippi',1],
      ['MO','Missouri',1],
      ['MT','Montana',1],
      ['NE','Nebraska',1],
      ['NV','Nevada',1],
      ['NH','New Hampshire',1],
      ['NJ','New Jersey',1],
      ['NM','New Mexico',1],
      ['NY','New York',1],
      ['NC','North Carolina',1],
      ['ND','North Dakota',1],
      ['OH','Ohio',1],
      ['OK','Oklahoma',1],
      ['OR','Oregon',1],
      ['PA','Pennsylvania',1],
      ['RI','Rhode Island',1],
      ['SC','South Carolina',1],
      ['SD','South Dakota',1],
      ['TN','Tennessee',1],
      ['TX','Texas',1],
      ['UT','Utah',1],
      ['VT','Vermont',1],
      ['VA','Virginia',1],
      ['WA','Washington',1],
      ['WV','West Virginia',1],
      ['WI','Wisconsin',1],
      ['WY','Wyoming',1]
    ]
    
states.each do |state_abbrv, state_name, state_active|
  State.create(state_abbrv: state_abbrv, state_name: state_name, state_active: state_active)
end
