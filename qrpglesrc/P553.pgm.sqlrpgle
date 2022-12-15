**free

ctl-opt dftactgrp(*no);

dcl-pi P553;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P286.rpgleinc'
/copy 'qrpgleref/P172.rpgleinc'

dcl-ds theTable extname('T1612') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1612 LIMIT 1;

theCharVar = 'Hello from P553';
dsply theCharVar;
P98();
P286();
P172();
return;