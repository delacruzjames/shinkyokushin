ActiveAdmin.register Member do
  actions :all, :except => [:destroy, :edit, :new]

  filter :dojo

  scope :all, :default => true

  scope :approved do |member|
    member.where(:is_active => true)
  end

  scope :pending do |member|
    member.where(:is_active => false)
  end

  action_item :only => :show do
    if resource.is_active?
      link_to "Reject", '#'
    else
      link_to "Approved", approved_admin_member_path(resource)
    end
  end

  member_action :approved do
    resource.is_active = true
    resource.expired_at = Time.now + 1.year
    resource.save!
    redirect_to admin_member_path(resource)
  end

  index do 
    column :full_name
    column :email
    column "Date Register" do |date|
      date.created_at.strftime(("%b %d, %Y")) unless date.expired_at.nil?
    end
    column "Expired" do |date|
      date.expired_at.strftime(("%b %d, %Y")) unless date.expired_at.nil?
    end
    default_actions
  end

  show do |member|
    attributes_table do
      row :full_name
      row :email
    end
  end
end
