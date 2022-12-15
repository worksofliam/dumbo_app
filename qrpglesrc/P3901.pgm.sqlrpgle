**free

ctl-opt dftactgrp(*no);

dcl-pi P3901;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2182.rpgleinc'
/copy 'qrpgleref/P2382.rpgleinc'
/copy 'qrpgleref/P1612.rpgleinc'

dcl-ds theTable extname('T921') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T921 LIMIT 1;

theCharVar = 'Hello from P3901';
dsply theCharVar;
callp localProc();
P2182();
P2382();
P1612();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3901 in the procedure';
end-proc;