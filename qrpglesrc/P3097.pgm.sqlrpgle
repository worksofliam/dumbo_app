**free

ctl-opt dftactgrp(*no);

dcl-pi P3097;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P120.rpgleinc'
/copy 'qrpgleref/P3069.rpgleinc'
/copy 'qrpgleref/P2784.rpgleinc'

dcl-ds theTable extname('T1016') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1016 LIMIT 1;

theCharVar = 'Hello from P3097';
dsply theCharVar;
callp localProc();
P120();
P3069();
P2784();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3097 in the procedure';
end-proc;