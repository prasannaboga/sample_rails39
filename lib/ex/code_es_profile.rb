puts("This is sample code for es profile")

# profiles = ProfileEs.search('robert', size: 10).records
# puts("###")
# profiles.each do |profile|
#     puts(profile.first_name)
# end


search_json = {
    query: {
        bool: {
            must: {
                match_all: {}
            },
            filter: {
                geo_distance: {
                    distance: "2000km",
                    coordinates: {
                        lat: 68.8520486112015,
                        lon: -76.0421847620266
                    }
                }
            }
        }
    }
}

addresses = Address.search(search_json)
addresses.records.each do |address|
    puts(address.user.as_json())
end
