**free

ctl-opt dftactgrp(*no);

dcl-pi P367;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P72.rpgleinc'

dcl-ds T746 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T746 FROM T746 LIMIT 1;

theCharVar = 'Hello from P367';
dsply theCharVar;
callp localProc();
P19();
P177();
P72();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P367 in the procedure';
end-proc;