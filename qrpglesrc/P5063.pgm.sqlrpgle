**free

ctl-opt dftactgrp(*no);

dcl-pi P5063;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3630.rpgleinc'
/copy 'qrpgleref/P5040.rpgleinc'
/copy 'qrpgleref/P4921.rpgleinc'

dcl-ds theTable extname('T675') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T675 LIMIT 1;

theCharVar = 'Hello from P5063';
dsply theCharVar;
callp localProc();
P3630();
P5040();
P4921();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5063 in the procedure';
end-proc;