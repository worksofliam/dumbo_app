**free

ctl-opt dftactgrp(*no);

dcl-pi P3537;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2428.rpgleinc'
/copy 'qrpgleref/P1696.rpgleinc'
/copy 'qrpgleref/P2316.rpgleinc'

dcl-ds theTable extname('T1591') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1591 LIMIT 1;

theCharVar = 'Hello from P3537';
dsply theCharVar;
P2428();
P1696();
P2316();
return;