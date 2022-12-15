**free

ctl-opt dftactgrp(*no);

dcl-pi P562;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P554.rpgleinc'
/copy 'qrpgleref/P509.rpgleinc'
/copy 'qrpgleref/P253.rpgleinc'

dcl-ds T115 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T115 FROM T115 LIMIT 1;

theCharVar = 'Hello from P562';
dsply theCharVar;
P554();
P509();
P253();
return;