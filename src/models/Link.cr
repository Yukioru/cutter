module Models
  class Link < Moongoon::Collection
    collection "links"
  
    property service : String
    property source : String
    property shorten : String
  end
end