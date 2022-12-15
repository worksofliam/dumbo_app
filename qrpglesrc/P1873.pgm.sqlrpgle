**free

ctl-opt dftactgrp(*no);

dcl-pi P1873;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1026.rpgleinc'
/copy 'qrpgleref/P599.rpgleinc'
/copy 'qrpgleref/P47.rpgleinc'

dcl-ds T833 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T833 FROM T833 LIMIT 1;

theCharVar = 'Hello from P1873';
dsply theCharVar;
P1026();
P599();
P47();
return;