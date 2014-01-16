newparam(:name) do
  include SimpleResource
  include SimpleResource::Validators::Name
  include SimpleResource::Mungers::Upcase

  desc "The user name"

  isnamevar

  to_translate_to_resource do | raw_resource|
    raw_resource['USERNAME'].upcase
  end


end