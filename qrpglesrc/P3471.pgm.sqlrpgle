**free

ctl-opt dftactgrp(*no);

dcl-pi P3471;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2988.rpgleinc'
/copy 'qrpgleref/P1500.rpgleinc'
/copy 'qrpgleref/P2962.rpgleinc'

dcl-ds theTable extname('T1823') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1823 LIMIT 1;

theCharVar = 'Hello from P3471';
dsply theCharVar;
callp localProc();
P2988();
P1500();
P2962();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3471 in the procedure';
end-proc;