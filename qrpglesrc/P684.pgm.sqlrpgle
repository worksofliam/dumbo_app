**free

ctl-opt dftactgrp(*no);

dcl-pi P684;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P182.rpgleinc'
/copy 'qrpgleref/P138.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'

dcl-ds T700 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T700 FROM T700 LIMIT 1;

theCharVar = 'Hello from P684';
dsply theCharVar;
callp localProc();
P182();
P138();
P27();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P684 in the procedure';
end-proc;