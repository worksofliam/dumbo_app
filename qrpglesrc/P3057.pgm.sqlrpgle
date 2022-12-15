**free

ctl-opt dftactgrp(*no);

dcl-pi P3057;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3038.rpgleinc'
/copy 'qrpgleref/P2407.rpgleinc'
/copy 'qrpgleref/P655.rpgleinc'

dcl-ds theTable extname('T1754') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1754 LIMIT 1;

theCharVar = 'Hello from P3057';
dsply theCharVar;
P3038();
P2407();
P655();
return;