**free

ctl-opt dftactgrp(*no);

dcl-pi P2105;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1629.rpgleinc'
/copy 'qrpgleref/P186.rpgleinc'
/copy 'qrpgleref/P1727.rpgleinc'

dcl-ds T1628 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1628 FROM T1628 LIMIT 1;

theCharVar = 'Hello from P2105';
dsply theCharVar;
P1629();
P186();
P1727();
return;