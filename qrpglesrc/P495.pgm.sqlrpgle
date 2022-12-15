**free

ctl-opt dftactgrp(*no);

dcl-pi P495;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P489.rpgleinc'
/copy 'qrpgleref/P493.rpgleinc'
/copy 'qrpgleref/P241.rpgleinc'

dcl-ds T1397 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1397 FROM T1397 LIMIT 1;

theCharVar = 'Hello from P495';
dsply theCharVar;
callp localProc();
P489();
P493();
P241();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P495 in the procedure';
end-proc;