ActiveAdmin.register Student do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :first_name, :last_name, :email, :phone_number, :course_id
  #
  index do
    selectable_column 
    id_column
    column :course_id
    column :first_name
    column :last_name
    column :email
    column :phone_number
    
    actions
      
    
  end

  show do
    attributes_table do

      row :course_id
      row :first_name
      row :last_name
      row :email
      row :phone_number

    end
  end

  form do |f|
    f.inputs do

      f.input :course_id, as: :select, collection: Course.all
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :phone_number

    end
    f.actions
  end
  
end
