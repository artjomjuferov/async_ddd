module Web
  module Views
    module Tasks
      class Show
        include Web::View

        def delete_link id
          form_for :task, routes.task_path(id), method: :delete do

            submit 'Delete'
          end
        end

        def complete_link id
          form_for :task, routes.complete_task_path(id), method: :put do

            submit 'Complete'
          end
        end
      end
    end
  end
end
