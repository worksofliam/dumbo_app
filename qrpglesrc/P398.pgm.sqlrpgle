**free

ctl-opt dftactgrp(*no);

dcl-pi P398;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P312.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'
/copy 'qrpgleref/P85.rpgleinc'

dcl-ds theTable extname('T368') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T368 LIMIT 1;

theCharVar = 'Hello from P398';
dsply theCharVar;
P312();
P44();
P85();
return;