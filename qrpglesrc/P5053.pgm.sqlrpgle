**free

ctl-opt dftactgrp(*no);

dcl-pi P5053;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2657.rpgleinc'
/copy 'qrpgleref/P4217.rpgleinc'
/copy 'qrpgleref/P974.rpgleinc'

dcl-ds theTable extname('T973') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T973 LIMIT 1;

theCharVar = 'Hello from P5053';
dsply theCharVar;
callp localProc();
P2657();
P4217();
P974();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5053 in the procedure';
end-proc;