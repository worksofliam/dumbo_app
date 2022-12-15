**free

ctl-opt dftactgrp(*no);

dcl-pi P2212;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P941.rpgleinc'
/copy 'qrpgleref/P2015.rpgleinc'
/copy 'qrpgleref/P1518.rpgleinc'

dcl-ds theTable extname('T1746') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1746 LIMIT 1;

theCharVar = 'Hello from P2212';
dsply theCharVar;
callp localProc();
P941();
P2015();
P1518();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2212 in the procedure';
end-proc;