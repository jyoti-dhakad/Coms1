ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :role
  #
  
  member_action :approve, method: :put do
    resource.update(status: :approved)
    CourseMailer.approve(resource).deliver_now
    redirect_to admin_users_path, notice: "status approved successfully."
  end
  member_action :cancel, method: :put do
    resource.update(status: :cancelled)
    
    redirect_to admin_users_path, notice: "status cancelled successfully."
  end



  index do
    selectable_column
    id_column

    column :first_name
    column :last_name
    column :email
    column :role
    column :phone_number
    column :gender
    column :language_known
    column :city
    column :state
    column :country
    column :pincode
    column :status
    

    actions
  end
  action_item :approve, only: :show do
    
    if user.status? && !resource.approved?
    
      link_to 'Approve', "/admin/users/#{params[:id]}/approve", method: :put
    end
  end

  action_item :cancel, only: :show do
    
    if user.status? && !resource.approved?
      link_to 'Cancel', "/admin/users/#{params[:id]}/cancel", method: :put
    end
  end
  
  
  
  show do 
    attributes_table do

      row :first_name
      row :last_name
      row :email
      row :role
      row :phone_number
      row :gender
      row :language_known
      row :city
      row :state
      row :country
      row :pincode
    end
  end

end
