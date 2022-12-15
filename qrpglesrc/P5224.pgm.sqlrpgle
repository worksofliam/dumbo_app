**free

ctl-opt dftactgrp(*no);

dcl-pi P5224;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4530.rpgleinc'
/copy 'qrpgleref/P4892.rpgleinc'
/copy 'qrpgleref/P1144.rpgleinc'

dcl-ds T1086 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1086 FROM T1086 LIMIT 1;

theCharVar = 'Hello from P5224';
dsply theCharVar;
callp localProc();
P4530();
P4892();
P1144();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5224 in the procedure';
end-proc;