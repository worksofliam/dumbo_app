**free

ctl-opt dftactgrp(*no);

dcl-pi P4062;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3349.rpgleinc'
/copy 'qrpgleref/P937.rpgleinc'
/copy 'qrpgleref/P1402.rpgleinc'

dcl-ds T597 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T597 FROM T597 LIMIT 1;

theCharVar = 'Hello from P4062';
dsply theCharVar;
callp localProc();
P3349();
P937();
P1402();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4062 in the procedure';
end-proc;