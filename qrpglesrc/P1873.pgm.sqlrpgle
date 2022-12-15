**free

ctl-opt dftactgrp(*no);

dcl-pi P1873;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P846.rpgleinc'
/copy 'qrpgleref/P1290.rpgleinc'

dcl-ds T381 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T381 FROM T381 LIMIT 1;

theCharVar = 'Hello from P1873';
dsply theCharVar;
P846();
P1290();
return;