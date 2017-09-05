require 'sinatra'
require 'tzinfo'

get '/' do
  File.read('public/form.html')
end

post '/calculate' do
  unless params[:model_initialization] =~ /\d\d/ and
    params[:model_initialization].to_i >= 0 &&
    params[:model_initialization].to_i < 24
    return 'enter model initialization 00 - 23 hours'
  end

  unless params[:offset] =~ /\d+/
    return 'enter time offset in hours'
  end

  tz = TZInfo::Timezone.get(params[:time_zone])
  tz.utc_to_local(
    Time.parse("#{params[:model_initialization]}:00 GMT") +
    params[:offset].to_i*60*60
  ).strftime('%A, %B %e at %I:%M %p')
end
