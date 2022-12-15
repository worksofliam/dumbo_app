**free

ctl-opt dftactgrp(*no);

dcl-pi P4529;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2056.rpgleinc'
/copy 'qrpgleref/P981.rpgleinc'
/copy 'qrpgleref/P553.rpgleinc'

dcl-ds theTable extname('T361') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T361 LIMIT 1;

theCharVar = 'Hello from P4529';
dsply theCharVar;
callp localProc();
P2056();
P981();
P553();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4529 in the procedure';
end-proc;