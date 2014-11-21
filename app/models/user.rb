class User < ActiveRecord::Base
  ratyrate_rater

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  paginates_per 25

  validates :role, inclusion: { in: %w(trial member admin),
            message: "Role must be either trial, member or admin;
                         all lower case"}

  def is_admin?
    role == 'admin'
  end

end
