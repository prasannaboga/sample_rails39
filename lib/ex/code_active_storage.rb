profile = Profile.first
puts(profile)
puts('===')
puts(profile.avatar.attached?)
profile.avatar.attach(io: File.open("/home/prasannaboga/Downloads/pexels-photo-1212487.jpeg"), filename: "pexels-photo-1212487.jpeg", content_type: "image/jpg")
