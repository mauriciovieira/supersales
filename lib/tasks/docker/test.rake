namespace :docker do
  desc 'Run tests in docker'
  task test: :environment do
    sh 'docker-compose -f docker-compose.test.yml run --rm app \
    sh -c "./docker/wait-for-services.sh && bundle exec rails db:create test:system"'
  end
end