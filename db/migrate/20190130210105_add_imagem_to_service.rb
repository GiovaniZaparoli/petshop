class AddImagemToService < ActiveRecord::Migration[5.2]
  def change
    add_attachment :services, :imagem
  end
end
