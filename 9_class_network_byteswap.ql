import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    exists(MacroInvocation mi |
      this = mi.getExpr() and
      mi.getMacroName() in ["ntohs", "ntohl", "ntohll"]
    )
  }
}

from NetworkByteSwap n
select n, "Network byte swap"
