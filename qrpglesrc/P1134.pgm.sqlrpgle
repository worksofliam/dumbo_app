**free

ctl-opt dftactgrp(*no);

dcl-pi P1134;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P128.rpgleinc'
/copy 'qrpgleref/P654.rpgleinc'
/copy 'qrpgleref/P848.rpgleinc'

dcl-ds T557 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T557 FROM T557 LIMIT 1;

theCharVar = 'Hello from P1134';
dsply theCharVar;
callp localProc();
P128();
P654();
P848();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1134 in the procedure';
end-proc;