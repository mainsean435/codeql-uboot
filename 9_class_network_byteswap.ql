import cpp

class NetworkByteSwap extends Expr{
    NetworkByteSwap(){
        exists(MacroInvocation  invocation|
            invocation.getMacroName().regexpMatch("ntoh(l|ll|s)")|
            this=invocation.getExpr()
            )
    }
}

from NetworkByteSwap n
select n,"Network byte swap"