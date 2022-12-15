**free

ctl-opt dftactgrp(*no);

dcl-pi P683;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P391.rpgleinc'
/copy 'qrpgleref/P86.rpgleinc'
/copy 'qrpgleref/P165.rpgleinc'

dcl-ds theTable extname('T348') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T348 LIMIT 1;

theCharVar = 'Hello from P683';
dsply theCharVar;
P391();
P86();
P165();
return;