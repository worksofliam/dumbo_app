**free

ctl-opt dftactgrp(*no);

dcl-pi P4239;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2717.rpgleinc'
/copy 'qrpgleref/P3015.rpgleinc'
/copy 'qrpgleref/P3274.rpgleinc'

dcl-ds T124 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T124 FROM T124 LIMIT 1;

theCharVar = 'Hello from P4239';
dsply theCharVar;
callp localProc();
P2717();
P3015();
P3274();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4239 in the procedure';
end-proc;