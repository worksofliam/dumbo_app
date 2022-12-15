**free

ctl-opt dftactgrp(*no);

dcl-pi P5414;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4288.rpgleinc'
/copy 'qrpgleref/P2774.rpgleinc'
/copy 'qrpgleref/P2424.rpgleinc'

dcl-ds theTable extname('T448') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T448 LIMIT 1;

theCharVar = 'Hello from P5414';
dsply theCharVar;
P4288();
P2774();
P2424();
return;