**free

ctl-opt dftactgrp(*no);

dcl-pi P605;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P527.rpgleinc'
/copy 'qrpgleref/P348.rpgleinc'
/copy 'qrpgleref/P406.rpgleinc'

dcl-ds theTable extname('T192') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T192 LIMIT 1;

theCharVar = 'Hello from P605';
dsply theCharVar;
callp localProc();
P527();
P348();
P406();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P605 in the procedure';
end-proc;