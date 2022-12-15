**free

ctl-opt dftactgrp(*no);

dcl-pi P586;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P476.rpgleinc'
/copy 'qrpgleref/P56.rpgleinc'
/copy 'qrpgleref/P487.rpgleinc'

dcl-ds T197 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T197 FROM T197 LIMIT 1;

theCharVar = 'Hello from P586';
dsply theCharVar;
P476();
P56();
P487();
return;