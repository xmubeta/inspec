control 'windows-base-process' do
  impact 1.0
  title 'process running'
  desc '
    process should be running
  '
  
  script = <<-EOH

    get-process  | Select-String -Pattern "amazon-ssm-agent"


  EOH

  describe powershell(script) do
    its('stdout') { should match /amazon-ssm-agent/ }
  end

end
