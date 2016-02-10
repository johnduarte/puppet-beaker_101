test_name 'Beaker and puppet hello world test' do

  step 'Test Beaker can interact with hosts' do
    hosts.each do |host|
      on(host, "echo hello")
    end
  end

  step 'Test Beaker can use puppet on hosts' do
    hosts.each do |host|
      on(host, puppet('apply', '-e', '"notify { \'HelloWorld\': }"'))
    end
  end

end
