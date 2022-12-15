**free

ctl-opt dftactgrp(*no);

dcl-pi P3678;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2137.rpgleinc'
/copy 'qrpgleref/P86.rpgleinc'
/copy 'qrpgleref/P2687.rpgleinc'

dcl-ds theTable extname('T1708') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1708 LIMIT 1;

theCharVar = 'Hello from P3678';
dsply theCharVar;
P2137();
P86();
P2687();
return;