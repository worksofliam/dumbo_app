**free

ctl-opt dftactgrp(*no);

dcl-pi P1033;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P227.rpgleinc'
/copy 'qrpgleref/P651.rpgleinc'
/copy 'qrpgleref/P295.rpgleinc'

dcl-ds theTable extname('T510') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T510 LIMIT 1;

theCharVar = 'Hello from P1033';
dsply theCharVar;
P227();
P651();
P295();
return;