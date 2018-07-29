namespace :docker do
  desc 'Build docker image'
  task build: :environment do
    sh "docker-compose -f docker-compose.test.yml build"
  end
end