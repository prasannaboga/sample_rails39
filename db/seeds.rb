# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Create users records

User.destroy_all

1.times do |i|
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
