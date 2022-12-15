**free

ctl-opt dftactgrp(*no);

dcl-pi P4357;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1980.rpgleinc'
/copy 'qrpgleref/P3168.rpgleinc'
/copy 'qrpgleref/P4056.rpgleinc'

dcl-ds T319 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T319 FROM T319 LIMIT 1;

theCharVar = 'Hello from P4357';
dsply theCharVar;
callp localProc();
P1980();
P3168();
P4056();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4357 in the procedure';
end-proc;