**free

ctl-opt dftactgrp(*no);

dcl-pi P3252;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2596.rpgleinc'
/copy 'qrpgleref/P2464.rpgleinc'
/copy 'qrpgleref/P3118.rpgleinc'

dcl-ds theTable extname('T308') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T308 LIMIT 1;

theCharVar = 'Hello from P3252';
dsply theCharVar;
P2596();
P2464();
P3118();
return;