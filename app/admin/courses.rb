ActiveAdmin.register Course do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :description, :course_fees, :instructor_id
  #
  index do
    selectable_column
      id_column
      column :instructor_id
      column :name
      column :description
      column :course_fees
      
      
    actions
  end

  show do
    attributes_table do
      row :instructor_id
      row :name
      row :description
      row :course_fees
    end
  end

  form do |f|
    f.inputs do
      
      f.input :instructor, :as => :select, :collection => Instructor.all.collect {|step| [step.first_name, step.id] }
      
      f.input :name
      f.input :description
      f.input :course_fees
      
    end
    f.actions
  end

  
end
