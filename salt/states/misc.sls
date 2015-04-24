# Misc packages that are helpful

misc:
  pkg.installed:
    - pkgs:
      - nano
      - curl
      - wget
      - xorg-x11-server-Xvfb
      - firefox
# Get the VM into the "normal" timezone
America/Los_Angeles:
  timezone.system
