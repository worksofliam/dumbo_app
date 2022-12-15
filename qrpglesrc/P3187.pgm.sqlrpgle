**free

ctl-opt dftactgrp(*no);

dcl-pi P3187;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P258.rpgleinc'
/copy 'qrpgleref/P875.rpgleinc'
/copy 'qrpgleref/P3031.rpgleinc'

dcl-ds theTable extname('T1180') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1180 LIMIT 1;

theCharVar = 'Hello from P3187';
dsply theCharVar;
P258();
P875();
P3031();
return;