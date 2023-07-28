module.exports = {
   branches: "dev",
   repositoryUrl: "https://github.com/Pdannyable/tickets-actions.git",
   plugins: [
     '@semantic-release/commit-analyzer',
     '@semantic-release/release-notes-generator',
     '@semantic-release/git',
     '@semantic-release/github']
}