**free

ctl-opt dftactgrp(*no);

dcl-pi P5129;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3210.rpgleinc'
/copy 'qrpgleref/P2300.rpgleinc'
/copy 'qrpgleref/P4371.rpgleinc'

dcl-ds theTable extname('T1627') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1627 LIMIT 1;

theCharVar = 'Hello from P5129';
dsply theCharVar;
P3210();
P2300();
P4371();
return;