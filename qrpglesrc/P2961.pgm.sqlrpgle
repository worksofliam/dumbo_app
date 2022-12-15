**free

ctl-opt dftactgrp(*no);

dcl-pi P2961;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P360.rpgleinc'
/copy 'qrpgleref/P1759.rpgleinc'
/copy 'qrpgleref/P1391.rpgleinc'

dcl-ds T781 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T781 FROM T781 LIMIT 1;

theCharVar = 'Hello from P2961';
dsply theCharVar;
callp localProc();
P360();
P1759();
P1391();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2961 in the procedure';
end-proc;