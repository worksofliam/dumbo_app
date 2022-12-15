**free

ctl-opt dftactgrp(*no);

dcl-pi P5197;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3845.rpgleinc'
/copy 'qrpgleref/P1184.rpgleinc'
/copy 'qrpgleref/P2614.rpgleinc'

dcl-ds theTable extname('T1534') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1534 LIMIT 1;

theCharVar = 'Hello from P5197';
dsply theCharVar;
callp localProc();
P3845();
P1184();
P2614();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5197 in the procedure';
end-proc;