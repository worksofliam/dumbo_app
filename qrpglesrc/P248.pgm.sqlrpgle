**free

ctl-opt dftactgrp(*no);

dcl-pi P248;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P171.rpgleinc'
/copy 'qrpgleref/P196.rpgleinc'
/copy 'qrpgleref/P86.rpgleinc'

dcl-ds T482 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T482 FROM T482 LIMIT 1;

theCharVar = 'Hello from P248';
dsply theCharVar;
callp localProc();
P171();
P196();
P86();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P248 in the procedure';
end-proc;