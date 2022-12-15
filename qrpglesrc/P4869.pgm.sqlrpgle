**free

ctl-opt dftactgrp(*no);

dcl-pi P4869;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4820.rpgleinc'
/copy 'qrpgleref/P2321.rpgleinc'
/copy 'qrpgleref/P2175.rpgleinc'

dcl-ds T1048 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1048 FROM T1048 LIMIT 1;

theCharVar = 'Hello from P4869';
dsply theCharVar;
callp localProc();
P4820();
P2321();
P2175();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4869 in the procedure';
end-proc;