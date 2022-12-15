**free

ctl-opt dftactgrp(*no);

dcl-pi P504;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P455.rpgleinc'
/copy 'qrpgleref/P130.rpgleinc'

theCharVar = 'Hello from P504';
dsply theCharVar;
callp localProc();
P17();
P455();
P130();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P504 in the procedure';
end-proc;