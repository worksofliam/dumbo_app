**free

ctl-opt dftactgrp(*no);

dcl-pi P5052;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4360.rpgleinc'
/copy 'qrpgleref/P2887.rpgleinc'
/copy 'qrpgleref/P348.rpgleinc'

dcl-ds theTable extname('T1429') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1429 LIMIT 1;

theCharVar = 'Hello from P5052';
dsply theCharVar;
P4360();
P2887();
P348();
return;