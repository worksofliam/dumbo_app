**free

ctl-opt dftactgrp(*no);

dcl-pi P1427;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1353.rpgleinc'
/copy 'qrpgleref/P1190.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'

dcl-ds theTable extname('T1668') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1668 LIMIT 1;

theCharVar = 'Hello from P1427';
dsply theCharVar;
callp localProc();
P1353();
P1190();
P25();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1427 in the procedure';
end-proc;