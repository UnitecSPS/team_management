module TeamsHelper
  def division_description
    if @team.first_div?
      "EQUIPO DE PRIMERA DIVISION"
    else
      "EQUIPO DE SEGUNDA DIVISION O MENOR"
    end
  end
end
