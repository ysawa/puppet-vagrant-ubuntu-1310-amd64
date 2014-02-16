class security::setup {
  ufw::allow { "allow-ssh-from-all":
    port => 22222,
  }

  ufw::allow { "allow-ssh-from-vagrant-host":
    port => 22,
    from => "10.0.2.2",
  }

  ufw::allow { "allow-mosh-from-all":
    port => "60000:61000",
    proto => "udp",
  }

  ufw::allow { "allow-http-from-all":
    port => 80,
  }
  ufw::allow { "allow-https-from-all":
    port => 443,
  }
}
