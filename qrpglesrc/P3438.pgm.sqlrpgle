**free

ctl-opt dftactgrp(*no);

dcl-pi P3438;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P428.rpgleinc'
/copy 'qrpgleref/P3425.rpgleinc'

dcl-ds theTable extname('T104') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T104 LIMIT 1;

theCharVar = 'Hello from P3438';
dsply theCharVar;
callp localProc();
P13();
P428();
P3425();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3438 in the procedure';
end-proc;