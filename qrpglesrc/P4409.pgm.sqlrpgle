**free

ctl-opt dftactgrp(*no);

dcl-pi P4409;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3776.rpgleinc'
/copy 'qrpgleref/P196.rpgleinc'
/copy 'qrpgleref/P1392.rpgleinc'

dcl-ds T98 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T98 FROM T98 LIMIT 1;

theCharVar = 'Hello from P4409';
dsply theCharVar;
callp localProc();
P3776();
P196();
P1392();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4409 in the procedure';
end-proc;