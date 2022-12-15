**free

ctl-opt dftactgrp(*no);

dcl-pi P3756;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3709.rpgleinc'
/copy 'qrpgleref/P1462.rpgleinc'
/copy 'qrpgleref/P1635.rpgleinc'

dcl-ds theTable extname('T286') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T286 LIMIT 1;

theCharVar = 'Hello from P3756';
dsply theCharVar;
callp localProc();
P3709();
P1462();
P1635();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3756 in the procedure';
end-proc;