**free

ctl-opt dftactgrp(*no);

dcl-pi P2929;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P2773.rpgleinc'
/copy 'qrpgleref/P489.rpgleinc'

dcl-ds T345 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T345 FROM T345 LIMIT 1;

theCharVar = 'Hello from P2929';
dsply theCharVar;
P23();
P2773();
P489();
return;