**free

ctl-opt dftactgrp(*no);

dcl-pi P3660;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2961.rpgleinc'
/copy 'qrpgleref/P1034.rpgleinc'
/copy 'qrpgleref/P2717.rpgleinc'

dcl-ds theTable extname('T970') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T970 LIMIT 1;

theCharVar = 'Hello from P3660';
dsply theCharVar;
callp localProc();
P2961();
P1034();
P2717();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3660 in the procedure';
end-proc;