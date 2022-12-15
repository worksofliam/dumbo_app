**free

ctl-opt dftactgrp(*no);

dcl-pi P3383;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P150.rpgleinc'
/copy 'qrpgleref/P2954.rpgleinc'
/copy 'qrpgleref/P2548.rpgleinc'

dcl-ds theTable extname('T1839') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1839 LIMIT 1;

theCharVar = 'Hello from P3383';
dsply theCharVar;
P150();
P2954();
P2548();
return;