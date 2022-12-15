**free

ctl-opt dftactgrp(*no);

dcl-pi P446;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P373.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'

dcl-ds T837 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T837 FROM T837 LIMIT 1;

theCharVar = 'Hello from P446';
dsply theCharVar;
callp localProc();
P373();
P7();
P40();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P446 in the procedure';
end-proc;