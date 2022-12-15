**free

ctl-opt dftactgrp(*no);

dcl-pi P857;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P295.rpgleinc'
/copy 'qrpgleref/P375.rpgleinc'
/copy 'qrpgleref/P724.rpgleinc'

dcl-ds theTable extname('T12') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T12 LIMIT 1;

theCharVar = 'Hello from P857';
dsply theCharVar;
P295();
P375();
P724();
return;