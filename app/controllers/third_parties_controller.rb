class ThirdPartiesController < ApplicationController

  # I am currently running the --skip-active-record command and want to know why it's not working?

  # When I log onto local host, I get the error connection to server on socket "/tmp/.s.PGSQL.5432" failed: FATAL: database "third_party_api_app_development" does not exist-- which I understand because it has to do with the db not existing. And I think this connects to 'skip' not working.

  def index
    response = HTTP.get("https://api.thedogapi.com/v1/breeds/APIkey=02ab4db0-673c-4be8-9b9e-e933b4b45698")
    render json: response
  end
end
