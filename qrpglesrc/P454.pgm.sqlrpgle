**free

ctl-opt dftactgrp(*no);

dcl-pi P454;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P333.rpgleinc'
/copy 'qrpgleref/P209.rpgleinc'
/copy 'qrpgleref/P150.rpgleinc'

dcl-ds T3 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T3 FROM T3 LIMIT 1;

theCharVar = 'Hello from P454';
dsply theCharVar;
P333();
P209();
P150();
return;