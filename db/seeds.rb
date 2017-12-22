
collor_names = %w(red blue yellow green orange gray black white )
    collor_names.each do |c_n|
        Color.create({ame:c_n, image_color: Faker::Avatar.image})
    end


# 8.times do |n|
#     image_color = Faker::Avatar.image
#     Color.create!(image_color: image_color)
# end    