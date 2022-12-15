**free

ctl-opt dftactgrp(*no);

dcl-pi P3702;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P689.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P3224.rpgleinc'

dcl-ds T1033 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1033 FROM T1033 LIMIT 1;

theCharVar = 'Hello from P3702';
dsply theCharVar;
callp localProc();
P689();
P55();
P3224();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3702 in the procedure';
end-proc;