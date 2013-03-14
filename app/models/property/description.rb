class Property
  module Description
    extend ActiveSupport::Concern

    included do  
      field :title,         type: String, default: '' #, localize: true # support multiple langs                        
      field :description,   type: String, default: '' #, localize: true

      validates :title,     presence: true, length: {within: 5..36 }

      before_validation do
        normalize_desc
      end
    end

    protected

    def normalize_desc
      self.title.strip! if self.title
      self.description.strip! if self.description
    end      
  end
end
