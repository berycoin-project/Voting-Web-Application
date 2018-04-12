json.extract! wallet, :id, :name, :wallet_address, :wallet_balance, :created_at, :updated_at
json.url wallet_url(wallet, format: :json)