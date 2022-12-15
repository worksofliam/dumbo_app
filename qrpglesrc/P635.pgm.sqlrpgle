**free

ctl-opt dftactgrp(*no);

dcl-pi P635;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P282.rpgleinc'
/copy 'qrpgleref/P216.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'

dcl-ds theTable extname('T37') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T37 LIMIT 1;

theCharVar = 'Hello from P635';
dsply theCharVar;
P282();
P216();
P55();
return;