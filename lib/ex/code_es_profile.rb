puts("This is sample code for es profile")

profiles = ProfileEs.search('robert', size: 10).records
profiles.each do |profile|
    puts(profile.first_name)
end
