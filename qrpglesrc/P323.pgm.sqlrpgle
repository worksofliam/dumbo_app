**free

ctl-opt dftactgrp(*no);

dcl-pi P323;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P263.rpgleinc'
/copy 'qrpgleref/P164.rpgleinc'
/copy 'qrpgleref/P174.rpgleinc'

dcl-ds T203 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T203 FROM T203 LIMIT 1;

theCharVar = 'Hello from P323';
dsply theCharVar;
callp localProc();
P263();
P164();
P174();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P323 in the procedure';
end-proc;