**free

ctl-opt dftactgrp(*no);

dcl-pi P4464;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3291.rpgleinc'
/copy 'qrpgleref/P1158.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'

dcl-ds T562 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T562 FROM T562 LIMIT 1;

theCharVar = 'Hello from P4464';
dsply theCharVar;
P3291();
P1158();
P101();
return;