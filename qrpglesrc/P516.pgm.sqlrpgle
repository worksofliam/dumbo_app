**free

ctl-opt dftactgrp(*no);

dcl-pi P516;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P203.rpgleinc'
/copy 'qrpgleref/P364.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'

dcl-ds T929 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T929 FROM T929 LIMIT 1;

theCharVar = 'Hello from P516';
dsply theCharVar;
P203();
P364();
P8();
return;