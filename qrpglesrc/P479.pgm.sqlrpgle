**free

ctl-opt dftactgrp(*no);

dcl-pi P479;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P195.rpgleinc'
/copy 'qrpgleref/P137.rpgleinc'
/copy 'qrpgleref/P436.rpgleinc'

dcl-ds theTable extname('T260') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T260 LIMIT 1;

theCharVar = 'Hello from P479';
dsply theCharVar;
P195();
P137();
P436();
return;