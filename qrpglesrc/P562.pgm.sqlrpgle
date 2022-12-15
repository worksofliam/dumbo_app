**free

ctl-opt dftactgrp(*no);

dcl-pi P562;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P362.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'

dcl-ds T991 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T991 FROM T991 LIMIT 1;

theCharVar = 'Hello from P562';
dsply theCharVar;
P362();
P31();
P127();
return;