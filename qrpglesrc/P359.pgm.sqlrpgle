**free

ctl-opt dftactgrp(*no);

dcl-pi P359;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P75.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'
/copy 'qrpgleref/P246.rpgleinc'

dcl-ds T70 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T70 FROM T70 LIMIT 1;

theCharVar = 'Hello from P359';
dsply theCharVar;
callp localProc();
P75();
P64();
P246();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P359 in the procedure';
end-proc;