ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do


    columns do
      column do
        panel "Pending Members" do
          div :class => "center" do
            b ""
          end
        end
      end
    end

    columns do
      column do
        panel "Approved Members" do
          div :class => "center" do
            b ""
          end
        end
      end
    end

    columns do
      column do
        panel "Instructors" do
          table_for Instructor.all.each do |table|
            table.column("Full Name") {|instructor| instructor.full_name }
            table.column("Last Login") {|instructor| instructor.last_sign_in_at }
          end
        end
      end
      column do
        panel "Dojos" do
          table_for Dojo.all.each do |table|
            table.column("Name") {|dojo| dojo.name }
            table.column("Members") {|dojo| dojo.members.count }
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
