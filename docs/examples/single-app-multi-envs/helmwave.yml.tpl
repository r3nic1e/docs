version: 0.16.2

releases:
  - name: my-release
    chart:
      name: my-chart-repo/my-chart-app
    # yaml says "Who is the last one is right."
    values:
      # Default
      - values/_.yml
      # For specific ENVIRONMENT
      - values/{{ requiredEnv "CI_ENVIRONMENT_NAME" }}.yml
    createnamespace: true
