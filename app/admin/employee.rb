ActiveAdmin.register Employee do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :f_name, :l_name, :address, :phone, :email, :sex, :start_date, :dept, :role, :salary, :manager, :notes
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

end
