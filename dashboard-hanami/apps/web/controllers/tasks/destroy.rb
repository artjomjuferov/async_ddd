module Web
  module Controllers
    module Tasks
      class Destroy
        include Web::Action

        def call(params)
          @task = TaskRepository.new.delete(params[:id])

          redirect_to routes.tasks_path
        end
      end
    end
  end
end
