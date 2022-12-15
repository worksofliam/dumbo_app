**free

ctl-opt dftactgrp(*no);

dcl-pi P4583;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4460.rpgleinc'
/copy 'qrpgleref/P3390.rpgleinc'
/copy 'qrpgleref/P656.rpgleinc'

dcl-ds theTable extname('T400') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T400 LIMIT 1;

theCharVar = 'Hello from P4583';
dsply theCharVar;
P4460();
P3390();
P656();
return;