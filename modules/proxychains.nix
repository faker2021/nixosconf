{ config, pkgs, lib, ... }: {
  # packages config
  environment.etc = {

    # proxy
    "proxychains.conf" = {
      text = ''
        strict_chain
        proxy_dns
        remote_dns_subnet 224
        tcp_read_time_out 15000
        tcp_connect_time_out 8000
        localnet 127.0.0.0/255.0.0.0
        quiet_mode
        [ProxyList]
        socks5 192.168.50.142 7890
      '';
    };
  };
  environment.systemPackages = with pkgs; [ proxychains ];

}
