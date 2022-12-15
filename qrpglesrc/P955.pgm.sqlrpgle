**free

ctl-opt dftactgrp(*no);

dcl-pi P955;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P298.rpgleinc'
/copy 'qrpgleref/P146.rpgleinc'

dcl-ds theTable extname('T8') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T8 LIMIT 1;

theCharVar = 'Hello from P955';
dsply theCharVar;
P90();
P298();
P146();
return;