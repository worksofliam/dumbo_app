**free

ctl-opt dftactgrp(*no);

dcl-pi P758;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P315.rpgleinc'
/copy 'qrpgleref/P146.rpgleinc'
/copy 'qrpgleref/P455.rpgleinc'

dcl-ds theTable extname('T74') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T74 LIMIT 1;

theCharVar = 'Hello from P758';
dsply theCharVar;
callp localProc();
P315();
P146();
P455();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P758 in the procedure';
end-proc;