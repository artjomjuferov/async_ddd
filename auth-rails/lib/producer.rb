class Producer
  def self.call **args
    new(**args).call
  end

  def initialize endpoint, params
    @endpoint = endpoint
    @params = params
  end

  def call

  end
end
