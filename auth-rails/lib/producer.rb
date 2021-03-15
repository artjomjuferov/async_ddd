class Producer
  def self.call **args
    new(**args).call
  end

  def initialize body, params
    @body = body
    @params = params
  end

  def call
  end
end
