ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation
# The following index section defines what is displayed in the admin console under the Admin Users section.

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

# The below "Filter" statements will define what criteria can be used to search and filter from the admin console.

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

# The below form sets out what details will be available in the Admin console forms for setting up and editing an Admin User.

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
