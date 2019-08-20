workflow "Test packages" {
  on = "push"
  resolves = ["npm install", "run unit test"]
}

action "npm install" {
  uses = "actions/npm@59b64a598378f31e49cb76f27d6f3312b582f680"
  runs = "npm install"
}

action "run unit test" {
  uses = "test"
  needs = ["npm install"]
  runs = "npm test"
}
