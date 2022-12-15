**free

ctl-opt dftactgrp(*no);

dcl-pi P2573;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1378.rpgleinc'
/copy 'qrpgleref/P222.rpgleinc'
/copy 'qrpgleref/P136.rpgleinc'

dcl-ds T1168 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1168 FROM T1168 LIMIT 1;

theCharVar = 'Hello from P2573';
dsply theCharVar;
P1378();
P222();
P136();
return;