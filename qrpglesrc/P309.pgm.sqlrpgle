**free

ctl-opt dftactgrp(*no);

dcl-pi P309;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P305.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P189.rpgleinc'

dcl-ds T137 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T137 FROM T137 LIMIT 1;

theCharVar = 'Hello from P309';
dsply theCharVar;
P305();
P43();
P189();
return;