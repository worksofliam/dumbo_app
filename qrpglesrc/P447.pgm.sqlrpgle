**free

ctl-opt dftactgrp(*no);

dcl-pi P447;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P437.rpgleinc'
/copy 'qrpgleref/P423.rpgleinc'
/copy 'qrpgleref/P48.rpgleinc'

dcl-ds theTable extname('T223') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T223 LIMIT 1;

theCharVar = 'Hello from P447';
dsply theCharVar;
P437();
P423();
P48();
return;