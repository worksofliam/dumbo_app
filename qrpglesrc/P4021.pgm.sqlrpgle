**free

ctl-opt dftactgrp(*no);

dcl-pi P4021;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1389.rpgleinc'
/copy 'qrpgleref/P1687.rpgleinc'
/copy 'qrpgleref/P2668.rpgleinc'

dcl-ds theTable extname('T1841') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1841 LIMIT 1;

theCharVar = 'Hello from P4021';
dsply theCharVar;
callp localProc();
P1389();
P1687();
P2668();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4021 in the procedure';
end-proc;