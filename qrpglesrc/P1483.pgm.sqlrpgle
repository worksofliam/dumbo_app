**free

ctl-opt dftactgrp(*no);

dcl-pi P1483;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1279.rpgleinc'
/copy 'qrpgleref/P742.rpgleinc'
/copy 'qrpgleref/P973.rpgleinc'

dcl-ds theTable extname('T1369') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1369 LIMIT 1;

theCharVar = 'Hello from P1483';
dsply theCharVar;
P1279();
P742();
P973();
return;