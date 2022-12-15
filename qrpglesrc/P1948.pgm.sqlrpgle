**free

ctl-opt dftactgrp(*no);

dcl-pi P1948;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1718.rpgleinc'
/copy 'qrpgleref/P119.rpgleinc'
/copy 'qrpgleref/P82.rpgleinc'

dcl-ds theTable extname('T1397') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1397 LIMIT 1;

theCharVar = 'Hello from P1948';
dsply theCharVar;
callp localProc();
P1718();
P119();
P82();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1948 in the procedure';
end-proc;