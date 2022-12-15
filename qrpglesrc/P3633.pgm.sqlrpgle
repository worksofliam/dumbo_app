**free

ctl-opt dftactgrp(*no);

dcl-pi P3633;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P336.rpgleinc'
/copy 'qrpgleref/P1925.rpgleinc'
/copy 'qrpgleref/P1350.rpgleinc'

dcl-ds theTable extname('T1578') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1578 LIMIT 1;

theCharVar = 'Hello from P3633';
dsply theCharVar;
callp localProc();
P336();
P1925();
P1350();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3633 in the procedure';
end-proc;