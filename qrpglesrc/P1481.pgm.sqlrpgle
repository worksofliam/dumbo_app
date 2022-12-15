**free

ctl-opt dftactgrp(*no);

dcl-pi P1481;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P376.rpgleinc'
/copy 'qrpgleref/P770.rpgleinc'
/copy 'qrpgleref/P1266.rpgleinc'

dcl-ds theTable extname('T91') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T91 LIMIT 1;

theCharVar = 'Hello from P1481';
dsply theCharVar;
callp localProc();
P376();
P770();
P1266();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1481 in the procedure';
end-proc;