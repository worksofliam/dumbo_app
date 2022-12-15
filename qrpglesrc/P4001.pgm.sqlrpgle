**free

ctl-opt dftactgrp(*no);

dcl-pi P4001;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2093.rpgleinc'
/copy 'qrpgleref/P1881.rpgleinc'
/copy 'qrpgleref/P1836.rpgleinc'

dcl-ds theTable extname('T1075') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1075 LIMIT 1;

theCharVar = 'Hello from P4001';
dsply theCharVar;
callp localProc();
P2093();
P1881();
P1836();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4001 in the procedure';
end-proc;