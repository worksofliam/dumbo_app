**free

ctl-opt dftactgrp(*no);

dcl-pi P4330;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2915.rpgleinc'
/copy 'qrpgleref/P2710.rpgleinc'
/copy 'qrpgleref/P404.rpgleinc'

dcl-ds theTable extname('T1398') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1398 LIMIT 1;

theCharVar = 'Hello from P4330';
dsply theCharVar;
P2915();
P2710();
P404();
return;