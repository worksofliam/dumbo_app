**free

ctl-opt dftactgrp(*no);

dcl-pi P4141;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2809.rpgleinc'
/copy 'qrpgleref/P2724.rpgleinc'
/copy 'qrpgleref/P400.rpgleinc'

dcl-ds theTable extname('T725') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T725 LIMIT 1;

theCharVar = 'Hello from P4141';
dsply theCharVar;
callp localProc();
P2809();
P2724();
P400();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4141 in the procedure';
end-proc;