@apps.each do |app|
    json.set! app.id do
        json.extract! app, :id, :name, :link, :category, :rank
        json.image_url asset_path(app.image)
    end
end