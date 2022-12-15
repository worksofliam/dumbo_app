**free

ctl-opt dftactgrp(*no);

dcl-pi P368;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P291.rpgleinc'
/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'

dcl-ds T854 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T854 FROM T854 LIMIT 1;

theCharVar = 'Hello from P368';
dsply theCharVar;
P291();
P41();
P7();
return;