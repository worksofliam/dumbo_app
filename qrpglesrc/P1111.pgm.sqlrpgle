**free

ctl-opt dftactgrp(*no);

dcl-pi P1111;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P985.rpgleinc'
/copy 'qrpgleref/P757.rpgleinc'

dcl-ds theTable extname('T1046') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1046 LIMIT 1;

theCharVar = 'Hello from P1111';
dsply theCharVar;
callp localProc();
P58();
P985();
P757();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1111 in the procedure';
end-proc;