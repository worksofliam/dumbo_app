**free

ctl-opt dftactgrp(*no);

dcl-pi P17;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'

theCharVar = 'Hello from P17';
dsply theCharVar;
callp localProc();
P10();
P5();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P17 in the procedure';
end-proc;