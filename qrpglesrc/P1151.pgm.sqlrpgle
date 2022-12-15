**free

ctl-opt dftactgrp(*no);

dcl-pi P1151;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1150.rpgleinc'
/copy 'qrpgleref/P846.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'

dcl-ds theTable extname('T790') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T790 LIMIT 1;

theCharVar = 'Hello from P1151';
dsply theCharVar;
P1150();
P846();
P49();
return;