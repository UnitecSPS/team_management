class TestErickIdea < ActiveRecord::Migration
  def up
    Player.all.each do |player|
      if player.jersey_number < 0 
        player.jersey_number = 99
        if player.save
          print "#{player.name} Updated"
        else
          print "NO SE PUDO"
        end
      end
    end
  end

  def down
  end
end
