newproperty(:segment_space_management) do
  include SimpleResource

  desc "TODO: Give description"
  newvalues(:auto, :manual)

  to_translate_to_resource do | raw_resource|
    raw_resource['SEGMEN'].downcase.to_sym
  end

  on_apply do
    "segment space management #{resource[:segment_space_management]}"
  end

end
