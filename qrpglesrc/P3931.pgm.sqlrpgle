**free

ctl-opt dftactgrp(*no);

dcl-pi P3931;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1063.rpgleinc'
/copy 'qrpgleref/P2982.rpgleinc'
/copy 'qrpgleref/P1614.rpgleinc'

dcl-ds theTable extname('T1664') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1664 LIMIT 1;

theCharVar = 'Hello from P3931';
dsply theCharVar;
callp localProc();
P1063();
P2982();
P1614();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3931 in the procedure';
end-proc;