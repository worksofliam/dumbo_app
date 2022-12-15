**free

ctl-opt dftactgrp(*no);

dcl-pi P455;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P238.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'

dcl-ds theTable extname('T1171') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1171 LIMIT 1;

theCharVar = 'Hello from P455';
dsply theCharVar;
callp localProc();
P238();
P58();
P68();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P455 in the procedure';
end-proc;