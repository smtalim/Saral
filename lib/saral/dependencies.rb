# saral/lib/saral/dependencies.rb
class Object
 def self.const_missing(c)
   require Saral.to_underscore(c.to_s)
   Object.const_get(c)
 end
end

