**free

ctl-opt dftactgrp(*no);

dcl-pi P2855;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1491.rpgleinc'
/copy 'qrpgleref/P767.rpgleinc'
/copy 'qrpgleref/P671.rpgleinc'

dcl-ds T469 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T469 FROM T469 LIMIT 1;

theCharVar = 'Hello from P2855';
dsply theCharVar;
P1491();
P767();
P671();
return;