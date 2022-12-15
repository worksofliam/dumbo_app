**free

ctl-opt dftactgrp(*no);

dcl-pi P5302;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4601.rpgleinc'
/copy 'qrpgleref/P699.rpgleinc'
/copy 'qrpgleref/P3212.rpgleinc'

dcl-ds theTable extname('T1562') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1562 LIMIT 1;

theCharVar = 'Hello from P5302';
dsply theCharVar;
P4601();
P699();
P3212();
return;