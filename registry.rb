control 'windows-base-101' do
  impact 1.0
  title 'Safe DLL Search Mode is Enabled'
  desc '
    @link: https://msdn.microsoft.com/en-us/library/ms682586(v=vs.85).aspx
  '
  describe registry_key('HKLM\\System\\CurrentControlSet\\Control\\Session Manager') do
  
    its('SafeDllSearchMode') { should eq 0 }
  end
end
