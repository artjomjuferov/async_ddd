module Web
  module Views
    module Tasks
      class New
        include Web::View

        def form
          form_for :task, routes.path(:tasks), class: 'form-horizontal' do
            div do
              label      :title
              text_field :title, class: 'form-control'
            end

            div do
              label      :description
              text_field :description, class: 'form-control'
            end

            submit 'Create task'
          end
        end
      end
    end
  end
end
