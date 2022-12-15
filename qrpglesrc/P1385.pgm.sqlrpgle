**free

ctl-opt dftactgrp(*no);

dcl-pi P1385;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P915.rpgleinc'
/copy 'qrpgleref/P1363.rpgleinc'
/copy 'qrpgleref/P463.rpgleinc'

dcl-ds theTable extname('T336') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T336 LIMIT 1;

theCharVar = 'Hello from P1385';
dsply theCharVar;
P915();
P1363();
P463();
return;