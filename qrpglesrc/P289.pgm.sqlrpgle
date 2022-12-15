**free

ctl-opt dftactgrp(*no);

dcl-pi P289;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P130.rpgleinc'

dcl-ds T633 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T633 FROM T633 LIMIT 1;

theCharVar = 'Hello from P289';
dsply theCharVar;
P9();
P84();
P130();
return;