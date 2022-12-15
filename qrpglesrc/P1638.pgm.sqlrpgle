**free

ctl-opt dftactgrp(*no);

dcl-pi P1638;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1207.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'
/copy 'qrpgleref/P682.rpgleinc'

dcl-ds theTable extname('T1261') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1261 LIMIT 1;

theCharVar = 'Hello from P1638';
dsply theCharVar;
callp localProc();
P1207();
P100();
P682();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1638 in the procedure';
end-proc;