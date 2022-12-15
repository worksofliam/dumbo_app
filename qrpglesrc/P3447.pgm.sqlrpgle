**free

ctl-opt dftactgrp(*no);

dcl-pi P3447;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P83.rpgleinc'
/copy 'qrpgleref/P1251.rpgleinc'
/copy 'qrpgleref/P2366.rpgleinc'

dcl-ds T491 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T491 FROM T491 LIMIT 1;

theCharVar = 'Hello from P3447';
dsply theCharVar;
P83();
P1251();
P2366();
return;