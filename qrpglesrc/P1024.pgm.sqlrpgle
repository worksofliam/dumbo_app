**free

ctl-opt dftactgrp(*no);

dcl-pi P1024;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P395.rpgleinc'
/copy 'qrpgleref/P804.rpgleinc'
/copy 'qrpgleref/P137.rpgleinc'

dcl-ds theTable extname('T102') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T102 LIMIT 1;

theCharVar = 'Hello from P1024';
dsply theCharVar;
P395();
P804();
P137();
return;