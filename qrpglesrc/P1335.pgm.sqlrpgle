**free

ctl-opt dftactgrp(*no);

dcl-pi P1335;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1174.rpgleinc'
/copy 'qrpgleref/P944.rpgleinc'
/copy 'qrpgleref/P495.rpgleinc'

dcl-ds theTable extname('T1683') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1683 LIMIT 1;

theCharVar = 'Hello from P1335';
dsply theCharVar;
P1174();
P944();
P495();
return;