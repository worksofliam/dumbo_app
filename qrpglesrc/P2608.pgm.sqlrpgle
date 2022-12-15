**free

ctl-opt dftactgrp(*no);

dcl-pi P2608;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1350.rpgleinc'
/copy 'qrpgleref/P1766.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'

dcl-ds theTable extname('T1129') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1129 LIMIT 1;

theCharVar = 'Hello from P2608';
dsply theCharVar;
callp localProc();
P1350();
P1766();
P29();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2608 in the procedure';
end-proc;