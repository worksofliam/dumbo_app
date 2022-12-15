**free

ctl-opt dftactgrp(*no);

dcl-pi P9;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'

dcl-ds T588 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T588 FROM T588 LIMIT 1;

theCharVar = 'Hello from P9';
dsply theCharVar;
P0();
return;