class User < ApplicationRecord
    validates :uid, presence: true, uniqueness: true
    validates :f_name, presence: true
    validates :l_name, presence: true
    validates :age, presence: true
    validates :address, presence: true
    validates :pincode, presence: true
    validates :city, presence: true
    validates :state, presence: true
    has_attached_file :image, styles: { medium: "250x250>", thumb: "100x100>" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    validates :image, attachment_presence: true

    def self.search_by(search_term)
        where("LOWER(f_name) LIKE :search_term OR LOWER(l_name) LIKE :search_term OR LOWER(state) LIKE :search_term", search_term: "%#{search_term.downcase}")
    end

end
