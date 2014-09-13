# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'
include Faker

time = ["am", "pm"]
repeating = [true, false, false, false, false]
def time_rand from = 0.0, to = Time.now
  Time.at(from + rand * (to.to_f - from.to_f))
end
Event.destroy_all
100.times do
  event = Event.create(
      title: Lorem.words(3).join(" "),
      all_day: repeating[rand(0..4)],
      description: Lorem.paragraphs(2).join("<br/>"),
      repeating: "#{repeating[rand(0..4)]}"
  )

  if !event.all_day
    event.start_date = DateTime.new(2014, rand(01..12), rand(01..28),rand(01..23),rand(01..59))
  else
  event.start_date = DateTime.new(2014, rand(01..12), rand(01..28))

  end
  if repeating
    event.repeating_id = rand(1..1000000)
  end

  event.save!

end

=begin
Staff.destroy_all
1000.times do
  member = Staff.create(
                          first_name: "#{Name.first_name}",
                          last_name: "#{Name.last_name}",
                          phone: (rand(900) + 100).to_s + "-" + (rand(900) + 100).to_s + "-" + (rand(9000) + 1000).to_s,
                          email: "#{Internet.email}",
                          division: "#{Company.name}"

  )
  member.save!
end
=end