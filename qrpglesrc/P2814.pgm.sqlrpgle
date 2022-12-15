**free

ctl-opt dftactgrp(*no);

dcl-pi P2814;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2233.rpgleinc'
/copy 'qrpgleref/P2583.rpgleinc'
/copy 'qrpgleref/P1016.rpgleinc'

dcl-ds theTable extname('T144') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T144 LIMIT 1;

theCharVar = 'Hello from P2814';
dsply theCharVar;
callp localProc();
P2233();
P2583();
P1016();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2814 in the procedure';
end-proc;