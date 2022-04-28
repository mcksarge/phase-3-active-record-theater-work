class Role < ActiveRecord::Base
    has_many :auditions

    def actors #Lists all actors of role
        list = []
        auditions.each do |audition|
            list << audition.actor
        end
        list
    end

    def locations #Lists all locations of audition
        list = []
        auditions.each do |audition|
            list << audition.location
        end
        list
    end

    def lead #Lists the lead actor of role
        list = []
        auditions.each do |audition|
            if audition.hired == true
                list << audition.actor
            end
        end

        if list.size > 0
            list.first
        else
            "No actor has been hired for this role."
        end
    end

    def understudy #Lists the understudy of role
        list = []
        auditions.each do |audition|
            if audition.hired == true
                list << audition.actor
            end
        end

        if list.size > 0
            list.second
        else
            "No actor has been hired for this role."
        end
    end


end