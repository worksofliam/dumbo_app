**free

ctl-opt dftactgrp(*no);

dcl-pi P2793;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1483.rpgleinc'
/copy 'qrpgleref/P1007.rpgleinc'
/copy 'qrpgleref/P2323.rpgleinc'

dcl-ds theTable extname('T1603') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1603 LIMIT 1;

theCharVar = 'Hello from P2793';
dsply theCharVar;
callp localProc();
P1483();
P1007();
P2323();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2793 in the procedure';
end-proc;