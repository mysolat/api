Eye.config do
  logger '/home/sistem/eye.log'
end

Eye.application 'mysolat' do
  working_dir File.expand_path(File.join(File.dirname(__FILE__), %w[ /mysolat/ ]))
  stdall 'log/trash.log' # stdout,err logs for processes by default
  env 'APP_ENV' => 'development' # global env for each processes
  trigger :flapping, times: 5, within: 1.minute, retry_in: 10.minutes
  check :cpu, every: 10.seconds, below: 100, times: 3 # global check for all processes
  # puma process, self daemonized
  process :puma do
    pid_file 'tmp/pids/server.pid'
    start_command 'rvm . do rails s -p 6000 -b 0.0.0.0 -d'
    stop_signals [:QUIT, 2.seconds, :TERM, 1.seconds, :KILL]
    #check :http, url: 'http://127.0.0.1:3000', pattern: /sign_in/, every: 30.seconds, times: [2, 3], timeout: 5.second
  end
end
