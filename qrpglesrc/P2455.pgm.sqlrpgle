**free

ctl-opt dftactgrp(*no);

dcl-pi P2455;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2030.rpgleinc'
/copy 'qrpgleref/P1563.rpgleinc'
/copy 'qrpgleref/P783.rpgleinc'

dcl-ds T761 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T761 FROM T761 LIMIT 1;

theCharVar = 'Hello from P2455';
dsply theCharVar;
P2030();
P1563();
P783();
return;