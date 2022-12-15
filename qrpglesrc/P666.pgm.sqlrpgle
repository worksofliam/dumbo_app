**free

ctl-opt dftactgrp(*no);

dcl-pi P666;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P630.rpgleinc'
/copy 'qrpgleref/P228.rpgleinc'

dcl-ds T319 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T319 FROM T319 LIMIT 1;

theCharVar = 'Hello from P666';
dsply theCharVar;
callp localProc();
P630();
P228();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P666 in the procedure';
end-proc;