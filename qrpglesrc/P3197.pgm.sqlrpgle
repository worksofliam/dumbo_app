**free

ctl-opt dftactgrp(*no);

dcl-pi P3197;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1790.rpgleinc'
/copy 'qrpgleref/P1591.rpgleinc'
/copy 'qrpgleref/P1309.rpgleinc'

dcl-ds theTable extname('T1037') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1037 LIMIT 1;

theCharVar = 'Hello from P3197';
dsply theCharVar;
callp localProc();
P1790();
P1591();
P1309();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3197 in the procedure';
end-proc;