**free

ctl-opt dftactgrp(*no);

dcl-pi P434;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P222.rpgleinc'
/copy 'qrpgleref/P290.rpgleinc'
/copy 'qrpgleref/P295.rpgleinc'

dcl-ds T100 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T100 FROM T100 LIMIT 1;

theCharVar = 'Hello from P434';
dsply theCharVar;
callp localProc();
P222();
P290();
P295();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P434 in the procedure';
end-proc;