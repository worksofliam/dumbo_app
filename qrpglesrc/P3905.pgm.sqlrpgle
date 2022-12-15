**free

ctl-opt dftactgrp(*no);

dcl-pi P3905;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1795.rpgleinc'
/copy 'qrpgleref/P3089.rpgleinc'
/copy 'qrpgleref/P3487.rpgleinc'

dcl-ds theTable extname('T1195') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1195 LIMIT 1;

theCharVar = 'Hello from P3905';
dsply theCharVar;
callp localProc();
P1795();
P3089();
P3487();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3905 in the procedure';
end-proc;