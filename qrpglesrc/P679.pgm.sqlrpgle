**free

ctl-opt dftactgrp(*no);

dcl-pi P679;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P423.rpgleinc'
/copy 'qrpgleref/P415.rpgleinc'
/copy 'qrpgleref/P298.rpgleinc'

dcl-ds T318 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T318 FROM T318 LIMIT 1;

theCharVar = 'Hello from P679';
dsply theCharVar;
callp localProc();
P423();
P415();
P298();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P679 in the procedure';
end-proc;