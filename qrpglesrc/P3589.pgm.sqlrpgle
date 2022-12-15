**free

ctl-opt dftactgrp(*no);

dcl-pi P3589;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1704.rpgleinc'
/copy 'qrpgleref/P1793.rpgleinc'
/copy 'qrpgleref/P1425.rpgleinc'

dcl-ds theTable extname('T1170') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1170 LIMIT 1;

theCharVar = 'Hello from P3589';
dsply theCharVar;
P1704();
P1793();
P1425();
return;