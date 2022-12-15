**free

ctl-opt dftactgrp(*no);

dcl-pi P491;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P87.rpgleinc'
/copy 'qrpgleref/P424.rpgleinc'
/copy 'qrpgleref/P136.rpgleinc'

dcl-ds T373 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T373 FROM T373 LIMIT 1;

theCharVar = 'Hello from P491';
dsply theCharVar;
callp localProc();
P87();
P424();
P136();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P491 in the procedure';
end-proc;