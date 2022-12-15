**free

ctl-opt dftactgrp(*no);

dcl-pi P425;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P278.rpgleinc'
/copy 'qrpgleref/P150.rpgleinc'
/copy 'qrpgleref/P415.rpgleinc'

dcl-ds T524 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T524 FROM T524 LIMIT 1;

theCharVar = 'Hello from P425';
dsply theCharVar;
callp localProc();
P278();
P150();
P415();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P425 in the procedure';
end-proc;