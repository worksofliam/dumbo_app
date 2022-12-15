**free

ctl-opt dftactgrp(*no);

dcl-pi P1516;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P895.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P953.rpgleinc'

dcl-ds theTable extname('T794') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T794 LIMIT 1;

theCharVar = 'Hello from P1516';
dsply theCharVar;
P895();
P1();
P953();
return;