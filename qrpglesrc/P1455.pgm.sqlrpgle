**free

ctl-opt dftactgrp(*no);

dcl-pi P1455;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P701.rpgleinc'
/copy 'qrpgleref/P182.rpgleinc'
/copy 'qrpgleref/P1235.rpgleinc'

dcl-ds theTable extname('T1293') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1293 LIMIT 1;

theCharVar = 'Hello from P1455';
dsply theCharVar;
callp localProc();
P701();
P182();
P1235();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1455 in the procedure';
end-proc;