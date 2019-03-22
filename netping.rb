control 'windows-base-ping' do
  impact 1.0
  title 'ping baidu'
  desc '
    ping baidu.com
  '
  
  script = <<-EOH
    # ping
    $ping = new-object system.net.networkinformation.ping
    $ping.send("www.baidu.com",3)
  EOH

  describe powershell(script) do
    its('stdout') { should match /Success/ }
  end

end
