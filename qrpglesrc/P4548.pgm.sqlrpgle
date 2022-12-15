**free

ctl-opt dftactgrp(*no);

dcl-pi P4548;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3297.rpgleinc'
/copy 'qrpgleref/P2684.rpgleinc'
/copy 'qrpgleref/P728.rpgleinc'

dcl-ds theTable extname('T1199') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1199 LIMIT 1;

theCharVar = 'Hello from P4548';
dsply theCharVar;
P3297();
P2684();
P728();
return;