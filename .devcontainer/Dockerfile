# Make sure RUBY_VERSION matches the Ruby version in .ruby-version
ARG RUBY_VERSION=3.2.1
FROM ghcr.io/rails/devcontainer/images/ruby:$RUBY_VERSION

# Install bun
ENV BUN_INSTALL=/usr/local/bun
ENV PATH=/usr/local/bun/bin:$PATH
ARG BUN_VERSION=1.0.35
RUN curl -fsSL https://bun.sh/install | bash -s -- "bun-v${BUN_VERSION}"
