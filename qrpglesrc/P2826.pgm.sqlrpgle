**free

ctl-opt dftactgrp(*no);

dcl-pi P2826;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P1871.rpgleinc'
/copy 'qrpgleref/P2281.rpgleinc'

dcl-ds theTable extname('T1002') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1002 LIMIT 1;

theCharVar = 'Hello from P2826';
dsply theCharVar;
callp localProc();
P11();
P1871();
P2281();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2826 in the procedure';
end-proc;