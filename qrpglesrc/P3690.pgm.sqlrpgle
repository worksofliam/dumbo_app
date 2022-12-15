**free

ctl-opt dftactgrp(*no);

dcl-pi P3690;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P978.rpgleinc'
/copy 'qrpgleref/P3215.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'

dcl-ds T901 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T901 FROM T901 LIMIT 1;

theCharVar = 'Hello from P3690';
dsply theCharVar;
callp localProc();
P978();
P3215();
P142();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3690 in the procedure';
end-proc;