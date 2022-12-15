**free

ctl-opt dftactgrp(*no);

dcl-pi P5148;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2682.rpgleinc'
/copy 'qrpgleref/P896.rpgleinc'
/copy 'qrpgleref/P2007.rpgleinc'

dcl-ds theTable extname('T1413') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1413 LIMIT 1;

theCharVar = 'Hello from P5148';
dsply theCharVar;
P2682();
P896();
P2007();
return;