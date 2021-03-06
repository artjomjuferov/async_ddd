module Web
  module Controllers
    module Tasks
      class Index
        include Web::Action

        expose :tasks

        def call params
          @tasks = TaskRepository.new.all
        end
      end
    end
  end
end
