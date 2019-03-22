control 'windows-base-ping' do
  impact 1.0
  title 'ping baidu'
  desc '
    ping baidu.com
  '
  
  script = <<-EOH
    # ping
    Test-NetConnection www.baidu.com
  EOH

  describe powershell(script) do
    its('stdout') { should eq '/True/' }
  end

end
