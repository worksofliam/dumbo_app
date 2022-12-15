**free

ctl-opt dftactgrp(*no);

dcl-pi P3686;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2773.rpgleinc'
/copy 'qrpgleref/P716.rpgleinc'
/copy 'qrpgleref/P225.rpgleinc'

dcl-ds theTable extname('T849') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T849 LIMIT 1;

theCharVar = 'Hello from P3686';
dsply theCharVar;
callp localProc();
P2773();
P716();
P225();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3686 in the procedure';
end-proc;