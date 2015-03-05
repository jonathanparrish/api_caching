class Repository

  def self.create_from_username(username)
    results = HTTParty.get(
        "https://api.github.com/users/#{username}/repos?sort=updated",
        :headers => {"Authorization" => "token #{ENV['GITHUB_TOKEN']}",
                     "User-Agent" => "anyone"
                    }
    )
    if response["login"]
      Repository.create(body: response,
                    name: response["name"],
                    url: response["url"],
                    number_of_forks: response["forks_count"],
                    number_of_stars: response["stargazers_count"],
                    changed_at: response["updated_at"],
                    language: response["language"]
     )
    else
      return nil
    end
  end

end
