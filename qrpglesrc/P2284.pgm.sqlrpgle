**free

ctl-opt dftactgrp(*no);

dcl-pi P2284;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2146.rpgleinc'
/copy 'qrpgleref/P124.rpgleinc'
/copy 'qrpgleref/P2124.rpgleinc'

dcl-ds theTable extname('T821') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T821 LIMIT 1;

theCharVar = 'Hello from P2284';
dsply theCharVar;
P2146();
P124();
P2124();
return;