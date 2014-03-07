name "base-ubuntu"
description "base role for ubuntu server"
run_list "recipe[apt::default]", "recipe[chef-client::cron]"
override_attributes(:chef_client => {
	:cron => {
  'minute' => '0',
  'hour' => '*/2',
  'path' => nil,
  'environment_variables' => nil,
  'log_file' => '/dev/null',
  'use_cron_d' => false,
  'mailto' => nil,
}
})