**free

ctl-opt dftactgrp(*no);

dcl-pi P2284;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P955.rpgleinc'
/copy 'qrpgleref/P737.rpgleinc'
/copy 'qrpgleref/P770.rpgleinc'

dcl-ds theTable extname('T1194') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1194 LIMIT 1;

theCharVar = 'Hello from P2284';
dsply theCharVar;
callp localProc();
P955();
P737();
P770();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2284 in the procedure';
end-proc;