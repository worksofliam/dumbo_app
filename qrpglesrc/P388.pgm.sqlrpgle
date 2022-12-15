**free

ctl-opt dftactgrp(*no);

dcl-pi P388;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P153.rpgleinc'
/copy 'qrpgleref/P109.rpgleinc'
/copy 'qrpgleref/P81.rpgleinc'

dcl-ds T256 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T256 FROM T256 LIMIT 1;

theCharVar = 'Hello from P388';
dsply theCharVar;
callp localProc();
P153();
P109();
P81();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P388 in the procedure';
end-proc;