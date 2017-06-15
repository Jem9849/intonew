10.times do |blog|
  Blog.create!(
    title: "My Bleg post #{blog}"
    )
end