**free

ctl-opt dftactgrp(*no);

dcl-pi P2884;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P582.rpgleinc'
/copy 'qrpgleref/P2440.rpgleinc'
/copy 'qrpgleref/P1226.rpgleinc'

dcl-ds theTable extname('T1345') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1345 LIMIT 1;

theCharVar = 'Hello from P2884';
dsply theCharVar;
callp localProc();
P582();
P2440();
P1226();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2884 in the procedure';
end-proc;