module AA
    def name
        puts('I am AA')
        return 'Name'
    end
end

module AB
    def name
        puts('I am AB')
        return 'Name'
    end
end


class A1
    include AA
    extend AB
end

a1 = A1.new
a1.name
A1.name



# class A2
#     extend AA
# end
#
# A2.name
