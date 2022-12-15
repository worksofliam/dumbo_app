**free

ctl-opt dftactgrp(*no);

dcl-pi P5528;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5475.rpgleinc'
/copy 'qrpgleref/P1718.rpgleinc'
/copy 'qrpgleref/P3536.rpgleinc'

dcl-ds theTable extname('T1647') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1647 LIMIT 1;

theCharVar = 'Hello from P5528';
dsply theCharVar;
callp localProc();
P5475();
P1718();
P3536();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5528 in the procedure';
end-proc;