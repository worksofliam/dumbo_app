**free

ctl-opt dftactgrp(*no);

dcl-pi P2725;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1758.rpgleinc'
/copy 'qrpgleref/P1730.rpgleinc'
/copy 'qrpgleref/P1682.rpgleinc'

dcl-ds T1107 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1107 FROM T1107 LIMIT 1;

theCharVar = 'Hello from P2725';
dsply theCharVar;
P1758();
P1730();
P1682();
return;