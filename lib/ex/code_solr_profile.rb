
puts("This is sample code for solr profile")

search = Profile.search do
  fulltext 'robert'
end

puts(search)
puts(search.total)
puts(search.results)
