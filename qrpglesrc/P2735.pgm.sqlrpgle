**free

ctl-opt dftactgrp(*no);

dcl-pi P2735;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2347.rpgleinc'
/copy 'qrpgleref/P254.rpgleinc'
/copy 'qrpgleref/P1060.rpgleinc'

dcl-ds T588 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T588 FROM T588 LIMIT 1;

theCharVar = 'Hello from P2735';
dsply theCharVar;
P2347();
P254();
P1060();
return;