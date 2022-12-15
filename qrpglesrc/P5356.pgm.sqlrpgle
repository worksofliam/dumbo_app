**free

ctl-opt dftactgrp(*no);

dcl-pi P5356;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4927.rpgleinc'
/copy 'qrpgleref/P3716.rpgleinc'
/copy 'qrpgleref/P4765.rpgleinc'

dcl-ds T876 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T876 FROM T876 LIMIT 1;

theCharVar = 'Hello from P5356';
dsply theCharVar;
callp localProc();
P4927();
P3716();
P4765();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5356 in the procedure';
end-proc;