**free

ctl-opt dftactgrp(*no);

dcl-pi P3959;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P982.rpgleinc'
/copy 'qrpgleref/P154.rpgleinc'
/copy 'qrpgleref/P2541.rpgleinc'

dcl-ds theTable extname('T1067') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1067 LIMIT 1;

theCharVar = 'Hello from P3959';
dsply theCharVar;
callp localProc();
P982();
P154();
P2541();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3959 in the procedure';
end-proc;