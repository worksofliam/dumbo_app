**free

ctl-opt dftactgrp(*no);

dcl-pi P4203;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P809.rpgleinc'
/copy 'qrpgleref/P3199.rpgleinc'
/copy 'qrpgleref/P655.rpgleinc'

dcl-ds theTable extname('T1178') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1178 LIMIT 1;

theCharVar = 'Hello from P4203';
dsply theCharVar;
P809();
P3199();
P655();
return;