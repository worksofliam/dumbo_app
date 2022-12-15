**free

ctl-opt dftactgrp(*no);

dcl-pi P2875;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2695.rpgleinc'
/copy 'qrpgleref/P2052.rpgleinc'
/copy 'qrpgleref/P801.rpgleinc'

dcl-ds theTable extname('T1084') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1084 LIMIT 1;

theCharVar = 'Hello from P2875';
dsply theCharVar;
callp localProc();
P2695();
P2052();
P801();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2875 in the procedure';
end-proc;