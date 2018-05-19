ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


permit_params :name,:email,:password,:gender,:date_of_birth,:avatar
index do
    column :name
    column :email
    column :gender
    column :date_of_birth
    column :avatar
    column :created_at
   actions
  end

form do |f|
    f.inputs "User" do
      f.input :email
      f.input :name
      f.input :password
      f.input :password_confirmation
      f.input :date_of_birth
      f.input :gender
      f.input :avatar
      
    end
    f.actions
end



end
