**free

ctl-opt dftactgrp(*no);

dcl-pi P3469;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3252.rpgleinc'
/copy 'qrpgleref/P2164.rpgleinc'
/copy 'qrpgleref/P2172.rpgleinc'

dcl-ds theTable extname('T1164') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1164 LIMIT 1;

theCharVar = 'Hello from P3469';
dsply theCharVar;
P3252();
P2164();
P2172();
return;