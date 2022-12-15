**free

ctl-opt dftactgrp(*no);

dcl-pi P166;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'

dcl-ds T64 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T64 FROM T64 LIMIT 1;

theCharVar = 'Hello from P166';
dsply theCharVar;
P9();
P127();
P4();
return;