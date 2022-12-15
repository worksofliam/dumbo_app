**free

ctl-opt dftactgrp(*no);

dcl-pi P3671;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2678.rpgleinc'
/copy 'qrpgleref/P2523.rpgleinc'
/copy 'qrpgleref/P3395.rpgleinc'

dcl-ds theTable extname('T1547') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1547 LIMIT 1;

theCharVar = 'Hello from P3671';
dsply theCharVar;
callp localProc();
P2678();
P2523();
P3395();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3671 in the procedure';
end-proc;