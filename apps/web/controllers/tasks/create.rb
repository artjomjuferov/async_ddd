module Web
  module Controllers
    module Tasks
      class Create
        include Web::Action

        def call params
          @task = TaskRepository.new.create(
            title: params[:task][:title],
            description: params[:task][:description],
            status: Task::OPEN_STATUS
          )

          redirect_to routes.task_path(@task.id)
        end
      end
    end
  end
end
