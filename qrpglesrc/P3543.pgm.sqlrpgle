**free

ctl-opt dftactgrp(*no);

dcl-pi P3543;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3417.rpgleinc'
/copy 'qrpgleref/P2602.rpgleinc'
/copy 'qrpgleref/P2732.rpgleinc'

dcl-ds theTable extname('T1036') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1036 LIMIT 1;

theCharVar = 'Hello from P3543';
dsply theCharVar;
callp localProc();
P3417();
P2602();
P2732();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3543 in the procedure';
end-proc;