**free

ctl-opt dftactgrp(*no);

dcl-pi P4877;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P886.rpgleinc'
/copy 'qrpgleref/P4523.rpgleinc'
/copy 'qrpgleref/P1150.rpgleinc'

dcl-ds theTable extname('T1328') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1328 LIMIT 1;

theCharVar = 'Hello from P4877';
dsply theCharVar;
P886();
P4523();
P1150();
return;