**free

ctl-opt dftactgrp(*no);

dcl-pi P164;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P104.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P116.rpgleinc'

dcl-ds theTable extname('T9') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T9 LIMIT 1;

theCharVar = 'Hello from P164';
dsply theCharVar;
callp localProc();
P104();
P76();
P116();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P164 in the procedure';
end-proc;