## Attribute Accessors
class Person
    attr_writer :name
    # def name
    #   @name
    # end

    attr_reader :name
    # def name=(value)
    #   @name = value
    # end
end

## or

class Person
    attr_accessor :name
end

yonatan = Person.new
yonatan.name = "Yonatan Kawo"
yonatan.name
# => "Yonatan Kawo"

## or

class Person
    attr_accessor :name
end

yonatan = Person.new
yonatan.name = "Yonatan Kawo"
yonatan.name
# => "Yonatan Kawo"

## or

def name=(full_name)
    first_name, last_name = full_name.split
    @first_name = first_name
    @last_name = last_name
end
## or

class Person
    attr_reader :first_name, :last_name

    def name=(full_name)
        first_name, last_name = full_name.split
        @first_name = first_name
        @last_name = last_name
    end

    def name
        "#{@first_name} #{@last_name}".strip
    end
end

yonatan = Person.new
yonatan.name = "Yonatan Kawo"

yonatan.first_name
# => "Yonatan"

yonatan.last_name
# => "Kawo"

yonatan.name
# => "Yonatan Kawo"