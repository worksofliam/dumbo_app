**free

ctl-opt dftactgrp(*no);

dcl-pi P670;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P572.rpgleinc'
/copy 'qrpgleref/P653.rpgleinc'
/copy 'qrpgleref/P339.rpgleinc'

theCharVar = 'Hello from P670';
dsply theCharVar;
callp localProc();
P572();
P653();
P339();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P670 in the procedure';
end-proc;