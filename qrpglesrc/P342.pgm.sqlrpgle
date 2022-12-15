**free

ctl-opt dftactgrp(*no);

dcl-pi P342;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P294.rpgleinc'
/copy 'qrpgleref/P302.rpgleinc'

dcl-ds T601 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T601 FROM T601 LIMIT 1;

theCharVar = 'Hello from P342';
dsply theCharVar;
callp localProc();
P294();
P302();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P342 in the procedure';
end-proc;