**free

ctl-opt dftactgrp(*no);

dcl-pi P2945;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1531.rpgleinc'
/copy 'qrpgleref/P1156.rpgleinc'
/copy 'qrpgleref/P1672.rpgleinc'

dcl-ds theTable extname('T921') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T921 LIMIT 1;

theCharVar = 'Hello from P2945';
dsply theCharVar;
callp localProc();
P1531();
P1156();
P1672();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2945 in the procedure';
end-proc;