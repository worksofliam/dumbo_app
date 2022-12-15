**free

ctl-opt dftactgrp(*no);

dcl-pi P842;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P291.rpgleinc'
/copy 'qrpgleref/P664.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'

dcl-ds T499 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T499 FROM T499 LIMIT 1;

theCharVar = 'Hello from P842';
dsply theCharVar;
P291();
P664();
P19();
return;