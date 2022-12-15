**free

ctl-opt dftactgrp(*no);

dcl-pi P2773;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P459.rpgleinc'
/copy 'qrpgleref/P410.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'

dcl-ds theTable extname('T437') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T437 LIMIT 1;

theCharVar = 'Hello from P2773';
dsply theCharVar;
callp localProc();
P459();
P410();
P58();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2773 in the procedure';
end-proc;