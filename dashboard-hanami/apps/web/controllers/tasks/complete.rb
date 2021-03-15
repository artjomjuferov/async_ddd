module Web
  module Controllers
    module Tasks
      class Complete
        include Web::Action

        def call(params)
          TaskRepository.new.update params[:id], status: Task::COMPLETED_STATUS

          redirect_to routes.task_path(params[:id])
        end
      end
    end
  end
end
