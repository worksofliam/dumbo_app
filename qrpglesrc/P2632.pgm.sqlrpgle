**free

ctl-opt dftactgrp(*no);

dcl-pi P2632;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2466.rpgleinc'
/copy 'qrpgleref/P1207.rpgleinc'
/copy 'qrpgleref/P419.rpgleinc'

dcl-ds theTable extname('T510') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T510 LIMIT 1;

theCharVar = 'Hello from P2632';
dsply theCharVar;
callp localProc();
P2466();
P1207();
P419();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2632 in the procedure';
end-proc;