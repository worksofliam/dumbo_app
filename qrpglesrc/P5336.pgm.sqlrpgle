**free

ctl-opt dftactgrp(*no);

dcl-pi P5336;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P89.rpgleinc'
/copy 'qrpgleref/P800.rpgleinc'
/copy 'qrpgleref/P4167.rpgleinc'

dcl-ds theTable extname('T1274') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1274 LIMIT 1;

theCharVar = 'Hello from P5336';
dsply theCharVar;
P89();
P800();
P4167();
return;