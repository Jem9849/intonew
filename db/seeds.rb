10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "MURRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR
    RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR
    RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR
    RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR
    RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR
    RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR"
    )
    
end


5.times do |skill|
  Skill.create!(
    title: "RELS #{skill}",
    percent_utilized: 15
    )
  end
  
puts "5 skills created"

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio}",
    subtitle: "Meh gret servuce",
    body: "MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO
    MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO
    MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO
    MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO
    MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO
    MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO",
    main_image: "https://static.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg",
    thumb_image: "https://www.royalcanin.com/~/media/Royal-Canin/Product-Categories/cat-adult-landing-hero.ashx",
    )
end

puts "9 portfolio items created"