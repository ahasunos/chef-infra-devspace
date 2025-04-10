# chef-client

## 📌 What is chef-client?

chef-client is the main executable that applies configuration policies (cookbooks/recipes) to a node in the Chef Infra ecosystem. It:

- Communicates with the Chef Server to fetch the latest cookbooks, roles, environments, etc.
- Runs a node’s run-list (the ordered list of recipes/roles to be applied).
- Converges the node to the desired state.

## Usage

🔧 Basic usage
```
chef-client
```
Runs the client in normal mode (fetches cookbooks from the Chef Server and applies them).

🧪 Local mode (no Chef Server)
```
chef-client -z
```
Also known as Zero mode. It reads cookbooks from your local directory.

📁 Specify cookbook path in local mode
```
chef-client -z -o my_cookbook::default -c config.rb
```
- -o specifies the run-list override (recipe to run).

- -c can point to a custom config file (optional).

🔍 Dry run
```
chef-client --why-run
```
Simulates what would happen during a run, but doesn’t apply changes.

🕓 Run once as a daemon
```
chef-client --once
```
Useful if chef-client is set up as a service or daemon.

## ✅ When to use chef-client

- On nodes managed by Chef Infra Server.

- When running a full infrastructure automation lifecycle — fetch, compile, converge.

- When you want consistent, automated config management across multiple machines.

- Can also be used in local mode for testing (with --local-mode).

## ❌ When not to use

- For quick, one-off tasks or local testing — use chef-apply instead.

- When you’re not working with full Chef Infra Server setup (unless you're using it in local mode).

- When you don’t need the whole node/run-list infrastructure model.

## 💡 Tips

- Run with --why-run to preview changes without applying them (dry run).

- Use --local-mode (chef-client -z) for development/testing without needing a server.

- Use --once when scheduling with a daemon like chef-client -d to run just once.
