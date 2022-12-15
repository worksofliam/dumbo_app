**free

ctl-opt dftactgrp(*no);

dcl-pi P643;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P331.rpgleinc'
/copy 'qrpgleref/P274.rpgleinc'
/copy 'qrpgleref/P366.rpgleinc'

dcl-ds T229 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T229 FROM T229 LIMIT 1;

theCharVar = 'Hello from P643';
dsply theCharVar;
callp localProc();
P331();
P274();
P366();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P643 in the procedure';
end-proc;