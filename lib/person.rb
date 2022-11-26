class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name_value)
        @name = name_value
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
       @happiness = if num > 10
                        10
                    elsif num < 0
                        0
                    else
                        num
                    end

        # with clamp
        # @happiness = num.clamp(0, 10)
    end

    def hygiene=(num)
        @hygiene = if num > 10
                        10
                    elsif num < 0
                        0
                    else
                        num
                    end
        # with clamp
        # @hygiene = num.clamp(0,10)
    end

    def clean?
        self.hygiene > 7
    end

    def happy?
        self.happiness > 7
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            [self, friend].each {|person| person.happiness -= 2}
            "blah blah partisan blah lobbyist"
        when "weather"
            [self, friend].each { |person| person.happiness +=1 }
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end