**free

ctl-opt dftactgrp(*no);

dcl-pi P398;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P364.rpgleinc'
/copy 'qrpgleref/P310.rpgleinc'

dcl-ds theTable extname('T984') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T984 LIMIT 1;

theCharVar = 'Hello from P398';
dsply theCharVar;
P58();
P364();
P310();
return;