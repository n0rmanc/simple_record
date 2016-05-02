class VendorResource < JSONAPI::Resource
  immutable
  has_many :temperatures
end
