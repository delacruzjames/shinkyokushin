ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do

    columns do
      column do
        panel "All Instructors" do

        end
      end
      column do
        panel "All Dojos" do
          
        end
      end
    end

    columns do
      column do
        panel "New Students" do
          div :class => "center" do
            b ""
          end
        end
      end
    end

    columns do

      column do
        panel "Monthly Report" do
          div :class => "center" do

          end
        end
      end
    end
  end
end
