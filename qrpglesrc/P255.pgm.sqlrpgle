**free

ctl-opt dftactgrp(*no);

dcl-pi P255;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P214.rpgleinc'
/copy 'qrpgleref/P196.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'

dcl-ds T105 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T105 FROM T105 LIMIT 1;

theCharVar = 'Hello from P255';
dsply theCharVar;
P214();
P196();
P44();
return;