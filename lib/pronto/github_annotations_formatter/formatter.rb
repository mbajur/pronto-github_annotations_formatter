module Pronto
  module Formatter
    class GithubAnnotationsFormatter < Pronto::Formatter::Base
      def self.name
        'github_annotations'
      end

      def format(messages, _repo, _patches)
        messages.map do |message|
          lineno = message.line.new_lineno if message.line

          result = { level: message.level.downcase, message: message.msg }
          result[:path] = message.path if message.path
          result[:line] = lineno if lineno
          result[:runner] = message.runner if message.runner

          "::#{result[:level]} file=#{result[:path]},line=#{result[:line]}::[#{result[:runner]}] #{result[:message]}"
        end
      end
    end
  end
end

Pronto::Formatter.register(Pronto::Formatter::GithubAnnotationsFormatter)
