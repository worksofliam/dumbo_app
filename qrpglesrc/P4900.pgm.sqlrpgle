**free

ctl-opt dftactgrp(*no);

dcl-pi P4900;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2624.rpgleinc'
/copy 'qrpgleref/P2493.rpgleinc'
/copy 'qrpgleref/P3567.rpgleinc'

dcl-ds theTable extname('T1857') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1857 LIMIT 1;

theCharVar = 'Hello from P4900';
dsply theCharVar;
callp localProc();
P2624();
P2493();
P3567();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4900 in the procedure';
end-proc;