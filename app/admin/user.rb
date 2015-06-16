ActiveAdmin.register User do
  # This determines which attributes of the User model will be displayed in the index page.
  index do
    column :email
    column :encrypted_password
    #  column :reset_password_token
    #  column :reset_password_sent_at
    #  column :remember_created_at
    #  column :sign_in_count
    #  column :current_sign_in_at
    #  column :last_sign_in_at
    #  column :current_sign_in_ip
    #  column :last_sign_in_ip
    #  column :created_at
    #  column :updated_at
    column :admin
    actions
  end

  # This is the form for creating a new user using the Admin backend. If you have added additional attributes to the User model, you need to include them here.

  form do |f|
    f.inputs "User Details" do
      f.semantic_errors *f.object.errors.keys
      f.input :email
      #f.input :encrypted_password
      f.input :password
      f.input :password_confirmation
      #   f.input :reset_password_token
      #   f.input :remember_created_at
      #   f.input :sign_in_count
      #   f.input :current_sign_in_at
      #   f.input :last_sign_in_at
      #   f.input :current_sign_in_ip
      #   f.input :last_sign_in_ip
      #   f.input :created_at
      #   f.input :updated_at
      f.input :admin
    end
    f.actions
  end

  # This is related to Rails 4 and the changes it introduced in handling strong parameters.
  controller do
=begin
    def permitted_params

      params.permit user: [:email, :encrypted_password, :reset_password_token, :remember_created_at, :sign_in_count, :current_sign_in_at,
                           :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :created_at, :updated_at, :admin, :utf8]

      params.require(:user).permit(:email, :encrypted_password, :reset_password_token, :remember_created_at, :sign_in_count, :current_sign_in_at,
                                   :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :created_at, :updated_at, :admin)
=end
      def permitted_params
        params.permit :utf8, :_method, :authenticity_token, :commit, :id,
                      user: [:email, :encrypted_password, :admin, :reset_password_token, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :created_at, :password, :password_confirmation, :updated_at]
      end

  end
  
end
