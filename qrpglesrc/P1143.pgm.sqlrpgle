**free

ctl-opt dftactgrp(*no);

dcl-pi P1143;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P682.rpgleinc'
/copy 'qrpgleref/P605.rpgleinc'
/copy 'qrpgleref/P433.rpgleinc'

dcl-ds theTable extname('T1662') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1662 LIMIT 1;

theCharVar = 'Hello from P1143';
dsply theCharVar;
callp localProc();
P682();
P605();
P433();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1143 in the procedure';
end-proc;