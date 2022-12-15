**free

ctl-opt dftactgrp(*no);

dcl-pi P2923;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P847.rpgleinc'
/copy 'qrpgleref/P2807.rpgleinc'
/copy 'qrpgleref/P1694.rpgleinc'

dcl-ds theTable extname('T1817') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1817 LIMIT 1;

theCharVar = 'Hello from P2923';
dsply theCharVar;
callp localProc();
P847();
P2807();
P1694();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2923 in the procedure';
end-proc;