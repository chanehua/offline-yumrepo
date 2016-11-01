#!/bin/env python

import socket
import SocketServer
import BaseHTTPServer
from SimpleHTTPServer import SimpleHTTPRequestHandler
#import signal

#signal.signal(signal.SIGCHLD,signal.SIG_IGN)

class ForkingHTTPServer(SocketServer.ForkingTCPServer):

   allow_reuse_address = 1

   def server_bind(self):
       """Override server_bind to store the server name."""
       SocketServer.TCPServer.server_bind(self)
       host, port = self.socket.getsockname()[:2]
       self.server_name = socket.getfqdn(host)
       self.server_port = port


def main(HandlerClass=SimpleHTTPRequestHandler,
        ServerClass=ForkingHTTPServer):
   BaseHTTPServer.test(HandlerClass, ServerClass)


if __name__ == '__main__':
   main()
