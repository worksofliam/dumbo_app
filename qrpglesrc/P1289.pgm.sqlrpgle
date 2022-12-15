**free

ctl-opt dftactgrp(*no);

dcl-pi P1289;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1259.rpgleinc'
/copy 'qrpgleref/P824.rpgleinc'
/copy 'qrpgleref/P1113.rpgleinc'

dcl-ds theTable extname('T1101') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1101 LIMIT 1;

theCharVar = 'Hello from P1289';
dsply theCharVar;
callp localProc();
P1259();
P824();
P1113();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1289 in the procedure';
end-proc;