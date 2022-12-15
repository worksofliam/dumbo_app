**free

ctl-opt dftactgrp(*no);

dcl-pi P2892;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P464.rpgleinc'
/copy 'qrpgleref/P1803.rpgleinc'
/copy 'qrpgleref/P1319.rpgleinc'

dcl-ds theTable extname('T205') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T205 LIMIT 1;

theCharVar = 'Hello from P2892';
dsply theCharVar;
callp localProc();
P464();
P1803();
P1319();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2892 in the procedure';
end-proc;