# chef-solo

chef-solo is a legacy tool used to run Chef cookbooks in a standalone mode, without needing a Chef server. It is useful for quick testing, one-off configurations, or simple setups.

⚠️ Note: chef-solo is deprecated in favor of chef-client in local mode (--local-mode or -z).

## Usage

```bash
chef-solo -c solo.rb -j node.json
```

### Example Run Result

```bash
Chef Infra Client, version 19.1.14
Patents: https://www.chef.io/patents
Infra Phase starting
Resolving cookbooks for run list: ["example_cookbook"]
Synchronizing cookbooks:
  - example_cookbook (0.1.0)
Installing cookbook gem dependencies:
Compiling cookbooks...
Loading Chef InSpec profile files:
Loading Chef InSpec input files:
Loading Chef InSpec waiver files:
Converging 2 resources
Recipe: example_cookbook::default
  * execute[echo_hello] action run
    - execute echo "Hello, Chef!"
  * file[/tmp/foo] action create (up to date)

Running handlers:
Running handlers complete
Infra Phase complete, 1/2 resources updated in 06 seconds

Compliance report:
 * Sample InSpec Profile
      Always Passes
         + Always True Test always evaluates to true

```

## ✅ When to Use
You want to apply a cookbook locally without any external dependencies.

You're testing cookbooks without setting up a Chef server.

You're working on a lightweight or isolated environment.

## 🚫 When Not to Use
In production environments or when using features that require a Chef server.

When you need centralized management, search, or encrypted data bags.

## 📦 Basic Requirements
solo.rb – Configuration file that tells chef-solo where your cookbooks are.

node.json – File that defines the node attributes and run list.

Cookbooks – The actual cookbooks you want to run.
