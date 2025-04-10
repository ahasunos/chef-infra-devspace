# chef-apply

- chef-apply is a command-line tool that lets you run standalone Chef recipes written in Ruby. It executes the recipe immediately on the local system without requiring a full Chef setup (like a Chef server or Chef Infra client configuration).

## Usage
Here’s the basic syntax for using chef-apply:

```
chef-apply your_recipe_file.rb
```

📌 Example

If you have a file called apply.rb, you can run it with:

```
chef-apply apply.rb
```

or

```
chef-apply ./apply.rb --minimal-ohai
```

--minimal-ohai: A flag that tells Chef to load a minimal set of system data using Ohai.

### Sample Output:
```
------------------------------------------------------------
  ! [WARNING] Non-Commercial License

  You are using a free tier version - not meant for commercial usage.

  If you are using it for commercial purposes, please reach
  out to our sales team at chef-sales@progress.com to get
  commercial license to be compliant with Progress Chef MLSA.
------------------------------------------------------------
Recipe: (chef-apply cookbook)::(chef-apply recipe)
  * file[/tmp/foo.txt] action create (up to date)
  * execute[echo_hello] action run
    - execute echo "Hello, Chef!"
```

That’s it! chef-apply reads the recipe, evaluates the resources, and applies them immediately to your local machine — no node setup, no server communication.



## When to Use
- For quick testing or learning basic Chef resources

- To apply simple configuration changes on your own machine

- When prototyping or debugging individual resources

- In one-off, ad hoc use cases (e.g., creating a file, installing a package)

## When Not to Use
- When managing multiple nodes or systems

- For production-grade automation or infrastructure management

- When you need version control, role-based configuration, environments, etc.

- If you’re already using full Chef Infra setups or need compliance integration
