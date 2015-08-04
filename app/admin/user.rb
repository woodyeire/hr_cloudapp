ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :id_column, :f_name, :l_name, :address, :phone, :sex, :start_date, :dept, :role, :salary, :manager, :notes

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Employee Details" do
      f.input :f_name
      f.input :l_name
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :address
      f.input :phone
      f.input :sex
      f.input :start_date
      f.input :dept
      f.input :role
      f.input :salary
      f.input :manager
      f.input :notes
    end
    f.actions
  end

end

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
