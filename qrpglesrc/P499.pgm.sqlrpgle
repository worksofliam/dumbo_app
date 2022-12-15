**free

ctl-opt dftactgrp(*no);

dcl-pi P499;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P56.rpgleinc'
/copy 'qrpgleref/P250.rpgleinc'
/copy 'qrpgleref/P214.rpgleinc'

dcl-ds T376 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T376 FROM T376 LIMIT 1;

theCharVar = 'Hello from P499';
dsply theCharVar;
P56();
P250();
P214();
return;