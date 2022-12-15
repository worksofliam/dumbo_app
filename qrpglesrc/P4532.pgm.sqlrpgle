**free

ctl-opt dftactgrp(*no);

dcl-pi P4532;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2519.rpgleinc'
/copy 'qrpgleref/P2007.rpgleinc'
/copy 'qrpgleref/P1596.rpgleinc'

dcl-ds T1427 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1427 FROM T1427 LIMIT 1;

theCharVar = 'Hello from P4532';
dsply theCharVar;
P2519();
P2007();
P1596();
return;