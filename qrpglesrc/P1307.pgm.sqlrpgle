**free

ctl-opt dftactgrp(*no);

dcl-pi P1307;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P841.rpgleinc'
/copy 'qrpgleref/P696.rpgleinc'
/copy 'qrpgleref/P295.rpgleinc'

dcl-ds T589 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T589 FROM T589 LIMIT 1;

theCharVar = 'Hello from P1307';
dsply theCharVar;
callp localProc();
P841();
P696();
P295();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1307 in the procedure';
end-proc;