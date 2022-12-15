**free

ctl-opt dftactgrp(*no);

dcl-pi P5016;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P373.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P203.rpgleinc'

dcl-ds theTable extname('T861') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T861 LIMIT 1;

theCharVar = 'Hello from P5016';
dsply theCharVar;
callp localProc();
P373();
P132();
P203();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5016 in the procedure';
end-proc;