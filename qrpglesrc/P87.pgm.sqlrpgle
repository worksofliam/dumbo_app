**free

ctl-opt dftactgrp(*no);

dcl-pi P87;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P56.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P36.rpgleinc'

dcl-ds T362 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T362 FROM T362 LIMIT 1;

theCharVar = 'Hello from P87';
dsply theCharVar;
P56();
P23();
P36();
return;