**free

ctl-opt dftactgrp(*no);

dcl-pi P455;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P164.rpgleinc'
/copy 'qrpgleref/P454.rpgleinc'
/copy 'qrpgleref/P67.rpgleinc'

dcl-ds theTable extname('T185') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T185 LIMIT 1;

theCharVar = 'Hello from P455';
dsply theCharVar;
callp localProc();
P164();
P454();
P67();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P455 in the procedure';
end-proc;