**free

ctl-opt dftactgrp(*no);

dcl-pi P2348;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P136.rpgleinc'
/copy 'qrpgleref/P779.rpgleinc'
/copy 'qrpgleref/P675.rpgleinc'

dcl-ds theTable extname('T1042') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1042 LIMIT 1;

theCharVar = 'Hello from P2348';
dsply theCharVar;
callp localProc();
P136();
P779();
P675();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2348 in the procedure';
end-proc;