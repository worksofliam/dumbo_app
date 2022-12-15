**free

ctl-opt dftactgrp(*no);

dcl-pi P3740;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1623.rpgleinc'
/copy 'qrpgleref/P1766.rpgleinc'
/copy 'qrpgleref/P3015.rpgleinc'

dcl-ds theTable extname('T975') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T975 LIMIT 1;

theCharVar = 'Hello from P3740';
dsply theCharVar;
callp localProc();
P1623();
P1766();
P3015();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3740 in the procedure';
end-proc;