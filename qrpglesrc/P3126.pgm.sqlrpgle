**free

ctl-opt dftactgrp(*no);

dcl-pi P3126;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2347.rpgleinc'
/copy 'qrpgleref/P313.rpgleinc'
/copy 'qrpgleref/P1391.rpgleinc'

dcl-ds T759 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T759 FROM T759 LIMIT 1;

theCharVar = 'Hello from P3126';
dsply theCharVar;
P2347();
P313();
P1391();
return;