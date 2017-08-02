class RodaEquVida < ApplicationRecord
    belongs_to :usuario
    belongs_to :coachee
    belongs_to :ferramenta
end
