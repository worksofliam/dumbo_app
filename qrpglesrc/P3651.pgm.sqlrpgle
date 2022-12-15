**free

ctl-opt dftactgrp(*no);

dcl-pi P3651;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P742.rpgleinc'
/copy 'qrpgleref/P3598.rpgleinc'
/copy 'qrpgleref/P2648.rpgleinc'

dcl-ds theTable extname('T843') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T843 LIMIT 1;

theCharVar = 'Hello from P3651';
dsply theCharVar;
callp localProc();
P742();
P3598();
P2648();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3651 in the procedure';
end-proc;