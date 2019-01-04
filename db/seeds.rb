# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each do |seed|
    puts(seed)
    load seed
end


=begin


# Create users records
User.destroy_all

1_000.times do |i|
    begin
        user = User.new
        user.username = "user_#{i}"
        user.email = Faker::Internet.unique.email
        user.password = Faker::Internet.password(10)

        user.reset_password_token = Faker::Internet.password(20)
        user.reset_password_sent_at = Faker::Time.between(365.days.ago, DateTime.now)

        user.remember_created_at = Faker::Time.between(365.days.ago, DateTime.now)

        user.sign_in_count = Faker::Number.rand(100)
        user.current_sign_in_at = Faker::Time.between(100.days.ago, DateTime.now)
        user.last_sign_in_at = Faker::Time.between(90.days.ago, DateTime.now)
        user.current_sign_in_ip = Faker::Internet.ip_v4_address
        user.last_sign_in_ip = Faker::Internet.ip_v4_address

        user.created_at = Faker::Time.between(365.days.ago, 300.days.ago)
        user.updated_at = Faker::Time.between(65.days.ago, DateTime.now)

        user.build_profile(
            first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            dob: Faker::Date.birthday(min_age = 19, 65),
            created_at: user.created_at,
            updated_at: Faker::Time.between(user.created_at, DateTime.now)
        )

        user.addresses.build(
            building_number: Faker::Address.building_number,
            secondary_address: Faker::Address.secondary_address,
            street_name: Faker::Address.street_name,
            street_address: Faker::Address.street_address,
            area_location: Faker::Address.community,
            postal_code: Faker::Address.postcode,
            latitude: Faker::Address.latitude,
            longitude: Faker::Address.longitude,
            extras: {
                'one': 1,
                'two': 2
            }
        )

        if user.save()
            puts("Created user record - #{user.username}")
        else
            print(user.errors.full_messages)
        end


    rescue Exception => ex
        puts("Failed to create user record - #{ex.message}")
        puts(ex.backtrace)
    end
end
=end
