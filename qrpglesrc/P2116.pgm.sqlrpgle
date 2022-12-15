**free

ctl-opt dftactgrp(*no);

dcl-pi P2116;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P542.rpgleinc'
/copy 'qrpgleref/P318.rpgleinc'
/copy 'qrpgleref/P1155.rpgleinc'

dcl-ds T1007 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1007 FROM T1007 LIMIT 1;

theCharVar = 'Hello from P2116';
dsply theCharVar;
callp localProc();
P542();
P318();
P1155();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2116 in the procedure';
end-proc;