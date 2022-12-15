**free

ctl-opt dftactgrp(*no);

dcl-pi P2675;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1800.rpgleinc'
/copy 'qrpgleref/P1317.rpgleinc'
/copy 'qrpgleref/P636.rpgleinc'

dcl-ds theTable extname('T1116') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1116 LIMIT 1;

theCharVar = 'Hello from P2675';
dsply theCharVar;
callp localProc();
P1800();
P1317();
P636();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2675 in the procedure';
end-proc;