**free

ctl-opt dftactgrp(*no);

dcl-pi P592;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P300.rpgleinc'
/copy 'qrpgleref/P470.rpgleinc'

dcl-ds T327 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T327 FROM T327 LIMIT 1;

theCharVar = 'Hello from P592';
dsply theCharVar;
P9();
P300();
P470();
return;