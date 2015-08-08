ActiveAdmin.register Request do
  permit_params :user_id, :employee_name, :date_begin, :date_end, :leave_type, :status

# The following index section defines what is displayed in the admin console under the Requests section.

  index do
    selectable_column
    id_column
    column :user_id
    column :employee_name
    column :leave_type
    column :status
    actions
  end
  
# The below "Filter" statements will define what criteria can be used to search and filter requests from the admin console.

  filter :employee_name
  filter :date_begin
  filter :date_end
  filter :leave_type
  filter :user_id
  filter :status

# The below form sets out what details will be available in the Admin console forms for setting up and editing a request.
# I have restricted this in such a way that only Admin users from the Admin Console can approve or reject these requests from this form.

  form do |f|
    f.inputs "Leave Request Details" do
      f.input :user_id
      f.input :employee_name
      f.input :date_begin
      f.input :date_end
      f.input :leave_type
#      f.input :status, [["Pending", "pending"],["Approved", "approved"]["Rejected", "rejected"]]
      f.input :status, as: :select, collection: [["Pending"],["Approved"],["Rejected"]], include_blank: false
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
