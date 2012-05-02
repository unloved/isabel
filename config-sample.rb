$repo_path = '/var/www/isabel/courier'

$libraries = $options = $server_options = {}
$libraries[:courier] = [YARD::Server::LibraryVersion.new(:courier, nil, "#{$repo_path}/.yardoc")]
$options[:single_library] = true