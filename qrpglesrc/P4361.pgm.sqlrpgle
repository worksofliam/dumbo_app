**free

ctl-opt dftactgrp(*no);

dcl-pi P4361;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P870.rpgleinc'
/copy 'qrpgleref/P3091.rpgleinc'
/copy 'qrpgleref/P2519.rpgleinc'

dcl-ds T1841 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1841 FROM T1841 LIMIT 1;

theCharVar = 'Hello from P4361';
dsply theCharVar;
callp localProc();
P870();
P3091();
P2519();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4361 in the procedure';
end-proc;