json.extract! table, :id, :tablename, :seatnumber, :isactive, :created_at, :updated_at
json.url table_url(table, format: :json)
