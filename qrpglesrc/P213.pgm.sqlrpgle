**free

ctl-opt dftactgrp(*no);

dcl-pi P213;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P37.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P56.rpgleinc'

dcl-ds T3 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T3 FROM T3 LIMIT 1;

theCharVar = 'Hello from P213';
dsply theCharVar;
P37();
P162();
P56();
return;