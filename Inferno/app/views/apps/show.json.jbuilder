json.app do
    json.extract! @app, :id, :name, :link, :category, :rank
    json.image_url asset_path(@app.image)
end