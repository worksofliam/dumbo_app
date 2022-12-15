**free

ctl-opt dftactgrp(*no);

dcl-pi P1641;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1419.rpgleinc'
/copy 'qrpgleref/P1242.rpgleinc'
/copy 'qrpgleref/P243.rpgleinc'

dcl-ds theTable extname('T1037') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1037 LIMIT 1;

theCharVar = 'Hello from P1641';
dsply theCharVar;
P1419();
P1242();
P243();
return;