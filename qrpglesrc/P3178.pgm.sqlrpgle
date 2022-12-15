**free

ctl-opt dftactgrp(*no);

dcl-pi P3178;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1578.rpgleinc'
/copy 'qrpgleref/P2986.rpgleinc'
/copy 'qrpgleref/P2177.rpgleinc'

dcl-ds theTable extname('T1270') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1270 LIMIT 1;

theCharVar = 'Hello from P3178';
dsply theCharVar;
P1578();
P2986();
P2177();
return;