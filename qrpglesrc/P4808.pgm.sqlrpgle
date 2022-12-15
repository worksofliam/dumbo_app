**free

ctl-opt dftactgrp(*no);

dcl-pi P4808;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1131.rpgleinc'
/copy 'qrpgleref/P2386.rpgleinc'
/copy 'qrpgleref/P236.rpgleinc'

dcl-ds theTable extname('T1250') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1250 LIMIT 1;

theCharVar = 'Hello from P4808';
dsply theCharVar;
callp localProc();
P1131();
P2386();
P236();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4808 in the procedure';
end-proc;