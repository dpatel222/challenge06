ActiveAdmin.register Customer do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment


  permit_params :full_name, :phone_number, :email_address, :notes, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:full_name, :phone_number, :email_address, :notes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  filter :has_one_attached

  form do |f|

    f.inputs          # builds an input field for every attribute
    f.input :image, as: :file
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end
end
