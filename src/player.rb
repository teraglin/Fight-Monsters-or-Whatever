require_relative 'dice.rb'
require_relative 'enemy.rb'

class Player
    def initialize(health)
        @player_health = health
        @player_current_health = health
        @player_ac = 10
    end

    def player_damage(dice)
        score = dice[0]
        return score
    end

    def gets_hit(enemy_attack)
        if enemy_attack >= @player_ac
            @player_health -= @enemy_damage
        end
    end

    def gain_amour(amount)
        @armour_class += amount
    end



end

# tim = Player.new(100)
# tim.gets_hit(d20)