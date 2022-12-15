**free

ctl-opt dftactgrp(*no);

dcl-pi P3979;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2058.rpgleinc'
/copy 'qrpgleref/P3172.rpgleinc'
/copy 'qrpgleref/P728.rpgleinc'

dcl-ds theTable extname('T1108') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1108 LIMIT 1;

theCharVar = 'Hello from P3979';
dsply theCharVar;
P2058();
P3172();
P728();
return;