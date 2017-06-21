3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
    )
  end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "MURRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR
    RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR
    RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR
    RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR
    RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR
    RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR",
    topic_id: Topic.last.id
    ) 
end


5.times do |skill|
  Skill.create!(
    title: "RELS #{skill}",
    percent_utilized: 15
    )
  end
  
puts "5 skills created"

8.times do |portfolio|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio}",
    subtitle: "Ruby on Rails",
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

1.times do |portfolio|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio}",
    subtitle: "Angular",
    body: "MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO
    MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO
    MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO
    MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO
    MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO
    MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO MU MON DO",
    main_image: "http://www.mycatspace.com/wp-content/uploads/2013/08/adopting-a-cat.jpg",
    thumb_image: "https://www.royalcanin.com/~/media/Royal-Canin/Product-Categories/cat-adult-landing-hero.ashx",
    )
end

puts "9 portfolio items created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
    )
  end

puts "3 technologies created"