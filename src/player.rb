class Player
    attr_accessor :health, :armour_class, :damage, :flask, :shield

    def initialize
        @health = HEALTH_MAX
        @armour_class = 12
        @damage = D6
        @flask = 0
        @shield = 0
    end

    def use_flask
        @flask += FLASK_MAX
    end

    def flask_cooldown
        if @flask > 0
            @flask -= 1
        end
    end

    def use_shield
        @shield += SHIELD_MAX
    end

    def shield_cooldown
        if @shield > 0
            @shield -= 1
        end
    end



    def player_gets_hit(damage)
        @health -= damage
    end

    def heal(healing)
        @health += healing
        if @health > HEALTH_MAX
            @health = HEALTH_MAX
        end
    end

    def print_player_health
        puts "PLAYER HP: #{@health}/#{HEALTH_MAX}"
        puts "PLAYER AC: #{armour_class}"
    end
end