**free

ctl-opt dftactgrp(*no);

dcl-pi P704;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P419.rpgleinc'
/copy 'qrpgleref/P334.rpgleinc'
/copy 'qrpgleref/P126.rpgleinc'

dcl-ds T86 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T86 FROM T86 LIMIT 1;

theCharVar = 'Hello from P704';
dsply theCharVar;
callp localProc();
P419();
P334();
P126();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P704 in the procedure';
end-proc;