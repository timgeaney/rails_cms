ActiveAdmin.register Block do

permit_params :title, :show_title, :body, :position, :display, :class_suffix, :order, :is_published
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  index do
    column :id 
    column :title, :sortable => :title 
    column :position, :sortable => :position
    column :display, :sortable => :display 
    column :created_at, :sortable => :created_at
    column :is_published
    column :order
    actions
  end

  form do |f|
    f.inputs "Details" do
      f.input :title, label: "Title"
      f.input :show_title, label: "Show Title"
      f.input :body, as: :html_editor, label: "Body"
      f.input :position, label: "Position", as: :select, collection: [["Jumbotron", 'jumbotron'], ["Block", 'block']]
      f.input :display, label: "Display", as: :select, collection: [["All pages", 'all'], ["Homepage", 'homepage']]
      f.input :order, label: "Order"
      f.input :is_published, label: "Published"
      f.input :class_suffix, label: "Class Suffix"
      f.actions
    end
  end


end
