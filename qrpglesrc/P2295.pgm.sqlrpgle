**free

ctl-opt dftactgrp(*no);

dcl-pi P2295;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P794.rpgleinc'
/copy 'qrpgleref/P2224.rpgleinc'
/copy 'qrpgleref/P1742.rpgleinc'

theCharVar = 'Hello from P2295';
dsply theCharVar;
callp localProc();
P794();
P2224();
P1742();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2295 in the procedure';
end-proc;