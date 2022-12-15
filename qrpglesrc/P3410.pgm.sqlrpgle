**free

ctl-opt dftactgrp(*no);

dcl-pi P3410;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P556.rpgleinc'
/copy 'qrpgleref/P318.rpgleinc'
/copy 'qrpgleref/P2908.rpgleinc'

dcl-ds theTable extname('T475') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T475 LIMIT 1;

theCharVar = 'Hello from P3410';
dsply theCharVar;
callp localProc();
P556();
P318();
P2908();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3410 in the procedure';
end-proc;