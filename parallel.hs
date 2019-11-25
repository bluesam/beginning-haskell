import Control.Parallel

--main = a `par` b `par` c `pseq` print (a + b + c)
--main = b `par` d `par` c `pseq` print (b,"a",d, "b",c)
--main = b `par` d `pseq` print(b, d)
--main = print(b,d)
main = b `par` d `par` print(b, d)--this does one calculates two factorials at the same time
    where
        a = ack 3 10
        b = fac 294128
        c = fib 34
        d = fac 161011

fac 0 = 1
fac n = n * fac (n-1)

ack 0 n = n+1
ack m 0 = ack (m-1) 1
ack m n = ack (m-1) (ack m (n-1))

fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)
