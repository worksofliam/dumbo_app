**free

ctl-opt dftactgrp(*no);

dcl-pi P633;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P74.rpgleinc'
/copy 'qrpgleref/P403.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'

dcl-ds T145 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T145 FROM T145 LIMIT 1;

theCharVar = 'Hello from P633';
dsply theCharVar;
callp localProc();
P74();
P403();
P61();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P633 in the procedure';
end-proc;