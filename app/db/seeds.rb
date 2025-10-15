Project.delete_all
10.times do |i|
  Project.create!(
    name: "Proj #{i+1}",
    status: (i.even? ? "active" : "archived"),
    owner_id: (i % 3 == 0 ? nil : i)
  )
end
puts "Seeded #{Project.count} projects"
