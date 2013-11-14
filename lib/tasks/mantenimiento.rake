namespace :mantenimiento do
  desc "Asignarle el primer equipo a registros que por alguna razon no tienen team"
  task :player_without_team => :environment do
    Player.all.each do |player|
      if player.team.blank?
        player.team = Team.first
        if player.save
          print "El jugador #{player.name} se le asigno el equipo #{Team.first.name}\n"
        end
      end
    end
  end

end
