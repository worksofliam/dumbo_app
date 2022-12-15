**free

ctl-opt dftactgrp(*no);

dcl-pi P614;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P490.rpgleinc'
/copy 'qrpgleref/P324.rpgleinc'
/copy 'qrpgleref/P263.rpgleinc'

dcl-ds T55 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T55 FROM T55 LIMIT 1;

theCharVar = 'Hello from P614';
dsply theCharVar;
callp localProc();
P490();
P324();
P263();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P614 in the procedure';
end-proc;