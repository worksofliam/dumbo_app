**free

ctl-opt dftactgrp(*no);

dcl-pi P3595;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2976.rpgleinc'
/copy 'qrpgleref/P671.rpgleinc'
/copy 'qrpgleref/P653.rpgleinc'

dcl-ds theTable extname('T338') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T338 LIMIT 1;

theCharVar = 'Hello from P3595';
dsply theCharVar;
P2976();
P671();
P653();
return;