**free

ctl-opt dftactgrp(*no);

dcl-pi P2242;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1378.rpgleinc'
/copy 'qrpgleref/P2104.rpgleinc'
/copy 'qrpgleref/P1944.rpgleinc'

dcl-ds theTable extname('T1149') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1149 LIMIT 1;

theCharVar = 'Hello from P2242';
dsply theCharVar;
callp localProc();
P1378();
P2104();
P1944();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2242 in the procedure';
end-proc;