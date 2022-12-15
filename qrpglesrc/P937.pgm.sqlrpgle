**free

ctl-opt dftactgrp(*no);

dcl-pi P937;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P712.rpgleinc'
/copy 'qrpgleref/P304.rpgleinc'
/copy 'qrpgleref/P520.rpgleinc'

dcl-ds T1775 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1775 FROM T1775 LIMIT 1;

theCharVar = 'Hello from P937';
dsply theCharVar;
callp localProc();
P712();
P304();
P520();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P937 in the procedure';
end-proc;