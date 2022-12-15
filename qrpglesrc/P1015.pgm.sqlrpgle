**free

ctl-opt dftactgrp(*no);

dcl-pi P1015;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P593.rpgleinc'
/copy 'qrpgleref/P903.rpgleinc'
/copy 'qrpgleref/P260.rpgleinc'

dcl-ds theTable extname('T1831') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1831 LIMIT 1;

theCharVar = 'Hello from P1015';
dsply theCharVar;
callp localProc();
P593();
P903();
P260();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1015 in the procedure';
end-proc;