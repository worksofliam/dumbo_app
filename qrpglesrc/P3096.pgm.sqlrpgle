**free

ctl-opt dftactgrp(*no);

dcl-pi P3096;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P729.rpgleinc'
/copy 'qrpgleref/P1984.rpgleinc'

dcl-ds theTable extname('T781') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T781 LIMIT 1;

theCharVar = 'Hello from P3096';
dsply theCharVar;
callp localProc();
P76();
P729();
P1984();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3096 in the procedure';
end-proc;