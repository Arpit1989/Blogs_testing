class ProjtController < ApplicationController\
	@github_address = GithubAddress.find(params[:github_address_id])
    @projt = @github_address.projts.create(params[:title])
    redirect_to github_addresses_path(@github_address)
end
