require 'redis'

loop do
  job = RedisConn.conn.blpop(['queue:ractor-example'], 1)
  next if job.nil?
  FileLogger.log("#{JSON.parse(job[1]).to_s}")
  pipe << JSON.parse(job[1])
end
