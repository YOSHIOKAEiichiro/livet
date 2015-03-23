json.array!(@requestitems) do |requestitem|
  json.extract! requestitem, :id, :name, :staff, :mail, :groupid, :quantity, :place, :memo
  json.url requestitem_url(requestitem, format: :json)
end
