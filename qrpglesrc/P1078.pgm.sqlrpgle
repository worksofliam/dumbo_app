**free

ctl-opt dftactgrp(*no);

dcl-pi P1078;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P629.rpgleinc'
/copy 'qrpgleref/P454.rpgleinc'
/copy 'qrpgleref/P732.rpgleinc'

dcl-ds T301 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T301 FROM T301 LIMIT 1;

theCharVar = 'Hello from P1078';
dsply theCharVar;
callp localProc();
P629();
P454();
P732();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1078 in the procedure';
end-proc;