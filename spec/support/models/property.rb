class Property
  include Mongoid::Document

  include_concerns :description
end