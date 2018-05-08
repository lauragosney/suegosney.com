ActiveAdmin.register Painting do

  permit_params :title, :image, :description, :size, :price, :gallery, :is_sold
  
  show do
    attributes_table do
     row :title
     row :image do |photo|
       image_tag photo.image.thumb, width: "40"
     end
     row :description
     row :size
     row :price
     row :gallery
     row :is_sold
    end
      active_admin_comments

  end

  index do
    selectable_column
    index_column
      column "Image" do |photo|
        image_tag photo.image.thumb, width: "40"
      end
      column :title
      column :description
      column :size
      column :price
      column :gallery
      column :is_sold


      actions
  end

  form do |f|

    f.inputs "Painting" do
      f.input :title
      f.input :description
      f.input :size
      f.input :price
      f.input :gallery
    end

    f.inputs "FIlters" do
      f.input :is_sold, label: "Sold?"
    end

    f.inputs "Images" do
      f.input :image
    end

    f.actions

  end

    filter :title
    filter :created_at
    filter :is_sold

end
