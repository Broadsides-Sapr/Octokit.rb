# frozen_string_literal: true

module Octokit
  # Class to extract options from Ruby arguments for
  # Repository-related methods
  class RepoArguments < Arguments
    # !@attribute [r] repo
    #   @return [Repository]
    attr_reader :repo

    def initialize(args)
      arguments = super
      @repo = arguments.shift

      arguments
    end
  end
end
