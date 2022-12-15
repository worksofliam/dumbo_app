**free

ctl-opt dftactgrp(*no);

dcl-pi P684;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P196.rpgleinc'
/copy 'qrpgleref/P238.rpgleinc'
/copy 'qrpgleref/P145.rpgleinc'

dcl-ds T481 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T481 FROM T481 LIMIT 1;

theCharVar = 'Hello from P684';
dsply theCharVar;
callp localProc();
P196();
P238();
P145();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P684 in the procedure';
end-proc;