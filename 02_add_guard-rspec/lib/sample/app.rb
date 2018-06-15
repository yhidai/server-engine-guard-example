require 'serverengine'
require 'sample/util'

module Sample
  module MyWorker
    def run
      until @stop
        logger.info "#{Sample::Util.hello}, Awesome work !"
        sleep 1
      end
    end

    def stop
      @stop = true
    end
  end

  class MyServer
    def self.start
      se = ServerEngine.create(nil, Sample::MyWorker, {
        daemonize: true,
        log: 'myserver.log',
        pid_path: 'myserver.pid',
        worker_type: 'process',
        workers: 1,
      })
      se.run
    end
  end
end

