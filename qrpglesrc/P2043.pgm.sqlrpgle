**free

ctl-opt dftactgrp(*no);

dcl-pi P2043;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1854.rpgleinc'
/copy 'qrpgleref/P1435.rpgleinc'
/copy 'qrpgleref/P582.rpgleinc'

dcl-ds theTable extname('T570') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T570 LIMIT 1;

theCharVar = 'Hello from P2043';
dsply theCharVar;
callp localProc();
P1854();
P1435();
P582();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2043 in the procedure';
end-proc;