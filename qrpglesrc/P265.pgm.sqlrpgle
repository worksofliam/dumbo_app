**free

ctl-opt dftactgrp(*no);

dcl-pi P265;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P235.rpgleinc'
/copy 'qrpgleref/P227.rpgleinc'
/copy 'qrpgleref/P216.rpgleinc'

dcl-ds T153 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T153 FROM T153 LIMIT 1;

theCharVar = 'Hello from P265';
dsply theCharVar;
callp localProc();
P235();
P227();
P216();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P265 in the procedure';
end-proc;