control 'windows-base-password-policy' do
  impact 1.0
  title 'password-policy'
  desc '
    password-policy
  '
  
  script = <<-EOH
    # get password complexity
    secedit /export /cfg C:\C:\Windows\Temp\securityconfig.cfg
    Get-Content C:\C:\Windows\Temp\securityconfig.cfg  | Select-String -Pattern "PasswordComplexity"
  EOH

  describe powershell(script) do
    its('stdout') { should match /1/ }
  end

end
