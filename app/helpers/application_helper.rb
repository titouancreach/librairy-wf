module ApplicationHelper
    def get_status_from_number(n)
        case n
          when 0
              "Inactive"
          when 1
              "On loan"
          when 2
              "Available"
        end
    end
end
