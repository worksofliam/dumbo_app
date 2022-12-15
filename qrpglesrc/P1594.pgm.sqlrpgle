**free

ctl-opt dftactgrp(*no);

dcl-pi P1594;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P500.rpgleinc'
/copy 'qrpgleref/P1437.rpgleinc'
/copy 'qrpgleref/P982.rpgleinc'

dcl-ds T277 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T277 FROM T277 LIMIT 1;

theCharVar = 'Hello from P1594';
dsply theCharVar;
callp localProc();
P500();
P1437();
P982();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1594 in the procedure';
end-proc;