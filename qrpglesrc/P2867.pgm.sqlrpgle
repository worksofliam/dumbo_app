**free

ctl-opt dftactgrp(*no);

dcl-pi P2867;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1799.rpgleinc'
/copy 'qrpgleref/P2001.rpgleinc'
/copy 'qrpgleref/P1829.rpgleinc'

dcl-ds theTable extname('T1007') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1007 LIMIT 1;

theCharVar = 'Hello from P2867';
dsply theCharVar;
callp localProc();
P1799();
P2001();
P1829();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2867 in the procedure';
end-proc;