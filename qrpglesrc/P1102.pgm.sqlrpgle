**free

ctl-opt dftactgrp(*no);

dcl-pi P1102;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P719.rpgleinc'
/copy 'qrpgleref/P790.rpgleinc'
/copy 'qrpgleref/P181.rpgleinc'

dcl-ds theTable extname('T1170') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1170 LIMIT 1;

theCharVar = 'Hello from P1102';
dsply theCharVar;
callp localProc();
P719();
P790();
P181();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1102 in the procedure';
end-proc;