**free

ctl-opt dftactgrp(*no);

dcl-pi P1093;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P502.rpgleinc'
/copy 'qrpgleref/P807.rpgleinc'
/copy 'qrpgleref/P582.rpgleinc'

dcl-ds T767 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T767 FROM T767 LIMIT 1;

theCharVar = 'Hello from P1093';
dsply theCharVar;
callp localProc();
P502();
P807();
P582();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1093 in the procedure';
end-proc;