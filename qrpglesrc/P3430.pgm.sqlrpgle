**free

ctl-opt dftactgrp(*no);

dcl-pi P3430;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2029.rpgleinc'
/copy 'qrpgleref/P438.rpgleinc'
/copy 'qrpgleref/P2217.rpgleinc'

dcl-ds T1172 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1172 FROM T1172 LIMIT 1;

theCharVar = 'Hello from P3430';
dsply theCharVar;
callp localProc();
P2029();
P438();
P2217();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3430 in the procedure';
end-proc;