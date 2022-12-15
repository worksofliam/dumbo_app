**free

ctl-opt dftactgrp(*no);

dcl-pi P3004;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2842.rpgleinc'
/copy 'qrpgleref/P1164.rpgleinc'
/copy 'qrpgleref/P1220.rpgleinc'

dcl-ds theTable extname('T1745') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1745 LIMIT 1;

theCharVar = 'Hello from P3004';
dsply theCharVar;
callp localProc();
P2842();
P1164();
P1220();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3004 in the procedure';
end-proc;