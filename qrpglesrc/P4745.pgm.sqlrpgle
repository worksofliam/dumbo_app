**free

ctl-opt dftactgrp(*no);

dcl-pi P4745;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3601.rpgleinc'
/copy 'qrpgleref/P3001.rpgleinc'
/copy 'qrpgleref/P1802.rpgleinc'

dcl-ds theTable extname('T232') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T232 LIMIT 1;

theCharVar = 'Hello from P4745';
dsply theCharVar;
P3601();
P3001();
P1802();
return;