**free

ctl-opt dftactgrp(*no);

dcl-pi P2483;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P987.rpgleinc'
/copy 'qrpgleref/P937.rpgleinc'
/copy 'qrpgleref/P1133.rpgleinc'

dcl-ds theTable extname('T1243') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1243 LIMIT 1;

theCharVar = 'Hello from P2483';
dsply theCharVar;
callp localProc();
P987();
P937();
P1133();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2483 in the procedure';
end-proc;