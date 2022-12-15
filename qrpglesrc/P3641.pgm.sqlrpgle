**free

ctl-opt dftactgrp(*no);

dcl-pi P3641;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3392.rpgleinc'
/copy 'qrpgleref/P1315.rpgleinc'
/copy 'qrpgleref/P2081.rpgleinc'

theCharVar = 'Hello from P3641';
dsply theCharVar;
callp localProc();
P3392();
P1315();
P2081();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3641 in the procedure';
end-proc;