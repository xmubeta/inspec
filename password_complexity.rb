control 'windows-account-102' do
  impact 'critical'
  title 'Windows Password Complexity is Enabled'
  desc 'Password must meet complexity requirement'
  describe security_policy do
    its('PasswordComplexity') { should cmp 1 }
  end
end
