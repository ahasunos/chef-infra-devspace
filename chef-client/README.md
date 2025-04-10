# chef-client

## 📌 What is chef-client?

chef-client is the main executable that applies configuration policies (cookbooks/recipes) to a node in the Chef Infra ecosystem. It:

- Communicates with the Chef Server to fetch the latest cookbooks, roles, environments, etc.
- Runs a node’s run-list (the ordered list of recipes/roles to be applied).
- Converges the node to the desired state.

## Usage

### Sample Run
```
chef-client -z -c client.rb -r 'recipe[example_cookbook]'
```

### Output
```
[2025-04-10T13:33:34+05:30] INFO: Auto-discovered chef repository at /Users/root/chef-infra-devspace/chef-client
[2025-04-10T13:33:34+05:30] INFO: Fetching and persisting license...
------------------------------------------------------------
  ! [WARNING] Non-Commercial License

  You are using a free tier version - not meant for commercial usage.

  If you are using it for commercial purposes, please reach
  out to our sales team at chef-sales@progress.com to get
  commercial license to be compliant with Progress Chef MLSA.
------------------------------------------------------------
[2025-04-10T13:33:34+05:30] INFO: Checking software entitlement...
[2025-04-10T13:33:34+05:30] INFO: Started Chef Infra Zero at chefzero://localhost:1 with repository at /Users/root/chef-infra-devspace/chef-client (One version per cookbook)
Chef Infra Client, version 19.1.14
Patents: https://www.chef.io/patents
Infra Phase starting
[2025-04-10T13:33:34+05:30] INFO: *** Chef Infra Client 19.1.14 ***
[2025-04-10T13:33:34+05:30] INFO: Platform: arm64-darwin23
[2025-04-10T13:33:34+05:30] INFO: Chef-client pid: 70880
[2025-04-10T13:33:36+05:30] INFO: Setting the run_list to [#<Chef::RunList::RunListItem:0x0000000110b35068 @version=nil, @type=:recipe, @name="example_cookbook">] from CLI options
[2025-04-10T13:33:36+05:30] INFO: Run List is [recipe[example_cookbook]]
[2025-04-10T13:33:36+05:30] INFO: Run List expands to [example_cookbook]
[2025-04-10T13:33:36+05:30] INFO: Starting Chef Infra Client Run for mcwfhsosaha
[2025-04-10T13:33:36+05:30] INFO: Running start handlers
[2025-04-10T13:33:36+05:30] INFO: Start handlers complete.
Resolving cookbooks for run list: ["example_cookbook"]
[2025-04-10T13:33:36+05:30] INFO: Loading cookbooks [example_cookbook@0.1.0]
Synchronizing cookbooks:
  - example_cookbook (0.1.0)
Installing cookbook gem dependencies:
Compiling cookbooks...
Loading Chef InSpec profile files:
Loading Chef InSpec input files:
Loading Chef InSpec waiver files:
Converging 0 resources
[2025-04-10T13:33:36+05:30] INFO: Chef Infra Client Run complete in 0.067983 seconds

Running handlers:
[2025-04-10T13:33:36+05:30] INFO: Running report handlers
Running handlers complete
[2025-04-10T13:33:36+05:30] INFO: Report handlers complete
Infra Phase complete, 0/0 resources updated in 01 seconds
[2025-04-10T13:33:36+05:30] INFO: Starting Chef Infra Compliance Phase
[2025-04-10T13:33:36+05:30] INFO: Checking software entitlement for compliance phase...
[2025-04-10T13:34:29+05:30] INFO: Running profiles from: [{:git=>"https://github.com/ahasunos/sample-inspec-profile.git", :name=>"sample_profile"}]
[2025-04-10T13:34:29+05:30] INFO: Reporting to cli

Compliance report:
 * Sample InSpec Profile
      Always Passes
         + Always True Test always evaluates to true

[2025-04-10T13:34:29+05:30] INFO: Chef Infra Compliance Phase Complete
```

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
