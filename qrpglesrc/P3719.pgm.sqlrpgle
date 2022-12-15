**free

ctl-opt dftactgrp(*no);

dcl-pi P3719;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2559.rpgleinc'
/copy 'qrpgleref/P2828.rpgleinc'
/copy 'qrpgleref/P3473.rpgleinc'

dcl-ds T115 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T115 FROM T115 LIMIT 1;

theCharVar = 'Hello from P3719';
dsply theCharVar;
P2559();
P2828();
P3473();
return;