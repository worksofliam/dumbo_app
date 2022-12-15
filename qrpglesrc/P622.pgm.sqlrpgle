**free

ctl-opt dftactgrp(*no);

dcl-pi P622;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P568.rpgleinc'
/copy 'qrpgleref/P66.rpgleinc'
/copy 'qrpgleref/P262.rpgleinc'

dcl-ds T1429 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1429 FROM T1429 LIMIT 1;

theCharVar = 'Hello from P622';
dsply theCharVar;
callp localProc();
P568();
P66();
P262();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P622 in the procedure';
end-proc;