**free

ctl-opt dftactgrp(*no);

dcl-pi P1575;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P195.rpgleinc'
/copy 'qrpgleref/P1022.rpgleinc'
/copy 'qrpgleref/P1180.rpgleinc'

dcl-ds T181 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T181 FROM T181 LIMIT 1;

theCharVar = 'Hello from P1575';
dsply theCharVar;
callp localProc();
P195();
P1022();
P1180();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1575 in the procedure';
end-proc;