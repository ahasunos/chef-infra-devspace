# Invoke the Compliance Phase
default['audit']['compliance_phase'] = true

# Set profile locations
default['audit']['profiles']['sample_profile'] = {
  'git': 'https://github.com/ahasunos/sample-inspec-profile.git'
}

default['audit']['quiet'] = false

default['audit']['reporter'] = 'cli'
