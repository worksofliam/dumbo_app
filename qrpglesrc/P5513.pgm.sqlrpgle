**free

ctl-opt dftactgrp(*no);

dcl-pi P5513;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P5189.rpgleinc'
/copy 'qrpgleref/P5028.rpgleinc'

dcl-ds theTable extname('T1849') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1849 LIMIT 1;

theCharVar = 'Hello from P5513';
dsply theCharVar;
callp localProc();
P76();
P5189();
P5028();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5513 in the procedure';
end-proc;