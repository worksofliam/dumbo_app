**free

ctl-opt dftactgrp(*no);

dcl-pi P2843;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1461.rpgleinc'
/copy 'qrpgleref/P1108.rpgleinc'
/copy 'qrpgleref/P2494.rpgleinc'

dcl-ds theTable extname('T786') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T786 LIMIT 1;

theCharVar = 'Hello from P2843';
dsply theCharVar;
callp localProc();
P1461();
P1108();
P2494();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2843 in the procedure';
end-proc;