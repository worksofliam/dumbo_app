**free

ctl-opt dftactgrp(*no);

dcl-pi P3678;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3629.rpgleinc'
/copy 'qrpgleref/P954.rpgleinc'
/copy 'qrpgleref/P440.rpgleinc'

dcl-ds theTable extname('T938') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T938 LIMIT 1;

theCharVar = 'Hello from P3678';
dsply theCharVar;
P3629();
P954();
P440();
return;