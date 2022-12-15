**free

ctl-opt dftactgrp(*no);

dcl-pi P3208;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2969.rpgleinc'
/copy 'qrpgleref/P3144.rpgleinc'
/copy 'qrpgleref/P1793.rpgleinc'

dcl-ds theTable extname('T1008') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1008 LIMIT 1;

theCharVar = 'Hello from P3208';
dsply theCharVar;
callp localProc();
P2969();
P3144();
P1793();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3208 in the procedure';
end-proc;