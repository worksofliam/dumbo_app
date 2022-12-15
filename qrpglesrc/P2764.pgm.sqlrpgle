**free

ctl-opt dftactgrp(*no);

dcl-pi P2764;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P467.rpgleinc'
/copy 'qrpgleref/P933.rpgleinc'
/copy 'qrpgleref/P748.rpgleinc'

dcl-ds T511 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T511 FROM T511 LIMIT 1;

theCharVar = 'Hello from P2764';
dsply theCharVar;
callp localProc();
P467();
P933();
P748();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2764 in the procedure';
end-proc;