**free

ctl-opt dftactgrp(*no);

dcl-pi P4292;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P284.rpgleinc'
/copy 'qrpgleref/P3965.rpgleinc'
/copy 'qrpgleref/P1434.rpgleinc'

dcl-ds theTable extname('T1232') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1232 LIMIT 1;

theCharVar = 'Hello from P4292';
dsply theCharVar;
P284();
P3965();
P1434();
return;