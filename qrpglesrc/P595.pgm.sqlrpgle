**free

ctl-opt dftactgrp(*no);

dcl-pi P595;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P260.rpgleinc'
/copy 'qrpgleref/P170.rpgleinc'
/copy 'qrpgleref/P221.rpgleinc'

dcl-ds theTable extname('T64') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T64 LIMIT 1;

theCharVar = 'Hello from P595';
dsply theCharVar;
P260();
P170();
P221();
return;