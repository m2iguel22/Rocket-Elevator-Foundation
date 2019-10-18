class Lead < ApplicationRecord
    include RailsAdminCharts
    has_one_attached :attachment

end
