# Chef Infra DevSpace

This repository serves as a personal sandbox to explore and experiment with various ways of using Chef Infra locally — including `chef-solo`, `chef-apply`, and `chef-client` in local mode. It provides simple setup examples for quick testing and development.

---

## 📦 What’s Included

### 1. 🔹 chef-solo
A standalone mode of Chef Infra used to apply cookbooks without a Chef server.

- **Files**:
  - `solo.rb` – Configuration file.
  - `node.json` – Node attributes and run list.
  - `cookbooks/` – Directory for cookbooks.

- **Run**:

  ```bash
  chef-solo -c solo.rb -j node.json
  ```

### 2. 🔹 chef-apply
A lightweight tool for applying a single recipe or small configuration in an ad-hoc way.

- **Files**:
  - `apply.rb` – A simple recipe written in Ruby.

- **Run**:

  ```bash
  chef-apply apply.rb
  ```

- **With minimal Ohai data**:

  ```bash
  chef-apply apply.rb --minimal-ohai
  ```

### 3. 🔹 chef-client (Local Mode)
Runs Chef Infra Client in local mode to simulate a full Chef run without requiring a Chef server.

- **Run**:

  ```bash
  chef-client -z -c client.rb -r 'recipe[example_cookbook]'
  ```

---

## 🛠 Purpose
This repository is intended solely for local development and understanding how different Chef execution modes work in isolation. Feel free to tweak configurations, experiment, and gain hands-on experience.

