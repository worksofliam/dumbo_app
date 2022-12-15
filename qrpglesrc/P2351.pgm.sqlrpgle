**free

ctl-opt dftactgrp(*no);

dcl-pi P2351;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1407.rpgleinc'
/copy 'qrpgleref/P1364.rpgleinc'
/copy 'qrpgleref/P907.rpgleinc'

dcl-ds T215 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T215 FROM T215 LIMIT 1;

theCharVar = 'Hello from P2351';
dsply theCharVar;
callp localProc();
P1407();
P1364();
P907();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2351 in the procedure';
end-proc;