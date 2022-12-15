**free

ctl-opt dftactgrp(*no);

dcl-pi P3912;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P726.rpgleinc'
/copy 'qrpgleref/P103.rpgleinc'
/copy 'qrpgleref/P2339.rpgleinc'

dcl-ds theTable extname('T1395') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1395 LIMIT 1;

theCharVar = 'Hello from P3912';
dsply theCharVar;
P726();
P103();
P2339();
return;