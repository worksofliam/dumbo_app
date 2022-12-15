**free

ctl-opt dftactgrp(*no);

dcl-pi P91;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P82.rpgleinc'

dcl-ds theTable extname('T234') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T234 LIMIT 1;

theCharVar = 'Hello from P91';
dsply theCharVar;
callp localProc();
P76();
P27();
P82();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P91 in the procedure';
end-proc;