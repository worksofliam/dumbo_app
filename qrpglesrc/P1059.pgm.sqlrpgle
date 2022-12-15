**free

ctl-opt dftactgrp(*no);

dcl-pi P1059;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P699.rpgleinc'
/copy 'qrpgleref/P354.rpgleinc'
/copy 'qrpgleref/P184.rpgleinc'

dcl-ds T263 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T263 FROM T263 LIMIT 1;

theCharVar = 'Hello from P1059';
dsply theCharVar;
callp localProc();
P699();
P354();
P184();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1059 in the procedure';
end-proc;