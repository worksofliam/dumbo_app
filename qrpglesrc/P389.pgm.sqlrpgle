**free

ctl-opt dftactgrp(*no);

dcl-pi P389;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P165.rpgleinc'
/copy 'qrpgleref/P348.rpgleinc'

dcl-ds T32 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T32 FROM T32 LIMIT 1;

theCharVar = 'Hello from P389';
dsply theCharVar;
callp localProc();
P98();
P165();
P348();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P389 in the procedure';
end-proc;