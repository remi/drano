require 'aws-sdk'

module Drano
  class Queue

    def initialize(args={}) # {{{
      @access_key = args[:access_key]
      @secret_key = args[:secret_key]
      @queue_name = args[:queue_name]

      sqs = AWS::SQS.new :access_key_id => @access_key, :secret_access_key => @secret_key
      @queue = sqs.queues.create(@queue_name)
    end # }}}

    def poll(&block) # {{{
      @queue.poll do |message|
        block.call(message)
      end
    end # }}}

  end
end
