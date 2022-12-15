**free

ctl-opt dftactgrp(*no);

dcl-pi P650;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P366.rpgleinc'

dcl-ds T77 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T77 FROM T77 LIMIT 1;

theCharVar = 'Hello from P650';
dsply theCharVar;
P43();
P76();
P366();
return;