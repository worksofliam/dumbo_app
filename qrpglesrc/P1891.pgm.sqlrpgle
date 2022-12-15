**free

ctl-opt dftactgrp(*no);

dcl-pi P1891;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P940.rpgleinc'
/copy 'qrpgleref/P1775.rpgleinc'
/copy 'qrpgleref/P991.rpgleinc'

dcl-ds T794 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T794 FROM T794 LIMIT 1;

theCharVar = 'Hello from P1891';
dsply theCharVar;
callp localProc();
P940();
P1775();
P991();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1891 in the procedure';
end-proc;