**free

ctl-opt dftactgrp(*no);

dcl-pi P481;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P175.rpgleinc'
/copy 'qrpgleref/P156.rpgleinc'
/copy 'qrpgleref/P128.rpgleinc'

dcl-ds T219 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T219 FROM T219 LIMIT 1;

theCharVar = 'Hello from P481';
dsply theCharVar;
callp localProc();
P175();
P156();
P128();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P481 in the procedure';
end-proc;