Sentry.init do |config|
  config.dsn = Rails.application.credentials.dig(:sentry, :dsn)

  # get breadcrumbs from logs
  config.breadcrumbs_logger = [ :active_support_logger, :http_logger ]

  # enable tracing
  # we recommend adjusting this value in production
  config.traces_sampler = lambda do |context|
    rack_env = context[:env]
    return 0.0 if rack_env.nil?
    return 0.0 if /up/.match?(rack_env["PATH_INFO"])
    0.1
  end

  # enable profiling
  # this is relative to traces_sample_rate
  config.profiles_sample_rate = 1.0
end
