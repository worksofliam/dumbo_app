**free

ctl-opt dftactgrp(*no);

dcl-pi P921;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P83.rpgleinc'
/copy 'qrpgleref/P516.rpgleinc'
/copy 'qrpgleref/P851.rpgleinc'

dcl-ds T6 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T6 FROM T6 LIMIT 1;

theCharVar = 'Hello from P921';
dsply theCharVar;
P83();
P516();
P851();
return;