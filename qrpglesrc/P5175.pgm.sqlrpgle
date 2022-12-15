**free

ctl-opt dftactgrp(*no);

dcl-pi P5175;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3923.rpgleinc'
/copy 'qrpgleref/P226.rpgleinc'
/copy 'qrpgleref/P3489.rpgleinc'

dcl-ds theTable extname('T1800') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1800 LIMIT 1;

theCharVar = 'Hello from P5175';
dsply theCharVar;
callp localProc();
P3923();
P226();
P3489();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5175 in the procedure';
end-proc;