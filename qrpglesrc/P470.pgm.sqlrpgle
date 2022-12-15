**free

ctl-opt dftactgrp(*no);

dcl-pi P470;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P244.rpgleinc'
/copy 'qrpgleref/P443.rpgleinc'
/copy 'qrpgleref/P203.rpgleinc'

dcl-ds T29 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T29 FROM T29 LIMIT 1;

theCharVar = 'Hello from P470';
dsply theCharVar;
P244();
P443();
P203();
return;