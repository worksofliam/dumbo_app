**free

ctl-opt dftactgrp(*no);

dcl-pi P4820;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1968.rpgleinc'
/copy 'qrpgleref/P3136.rpgleinc'
/copy 'qrpgleref/P4266.rpgleinc'

dcl-ds T798 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T798 FROM T798 LIMIT 1;

theCharVar = 'Hello from P4820';
dsply theCharVar;
callp localProc();
P1968();
P3136();
P4266();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4820 in the procedure';
end-proc;