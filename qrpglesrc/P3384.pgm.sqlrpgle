**free

ctl-opt dftactgrp(*no);

dcl-pi P3384;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P509.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P659.rpgleinc'

dcl-ds T1426 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1426 FROM T1426 LIMIT 1;

theCharVar = 'Hello from P3384';
dsply theCharVar;
callp localProc();
P509();
P30();
P659();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3384 in the procedure';
end-proc;