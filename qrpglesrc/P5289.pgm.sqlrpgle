**free

ctl-opt dftactgrp(*no);

dcl-pi P5289;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P371.rpgleinc'
/copy 'qrpgleref/P4190.rpgleinc'
/copy 'qrpgleref/P2182.rpgleinc'

dcl-ds T201 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T201 FROM T201 LIMIT 1;

theCharVar = 'Hello from P5289';
dsply theCharVar;
P371();
P4190();
P2182();
return;