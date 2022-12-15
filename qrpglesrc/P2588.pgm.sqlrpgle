**free

ctl-opt dftactgrp(*no);

dcl-pi P2588;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1424.rpgleinc'
/copy 'qrpgleref/P491.rpgleinc'
/copy 'qrpgleref/P2283.rpgleinc'

dcl-ds T658 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T658 FROM T658 LIMIT 1;

theCharVar = 'Hello from P2588';
dsply theCharVar;
P1424();
P491();
P2283();
return;