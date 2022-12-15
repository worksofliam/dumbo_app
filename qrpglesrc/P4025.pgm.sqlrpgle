**free

ctl-opt dftactgrp(*no);

dcl-pi P4025;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P962.rpgleinc'
/copy 'qrpgleref/P2349.rpgleinc'
/copy 'qrpgleref/P3175.rpgleinc'

dcl-ds theTable extname('T1481') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1481 LIMIT 1;

theCharVar = 'Hello from P4025';
dsply theCharVar;
P962();
P2349();
P3175();
return;