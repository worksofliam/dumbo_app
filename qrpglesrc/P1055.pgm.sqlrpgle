**free

ctl-opt dftactgrp(*no);

dcl-pi P1055;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P777.rpgleinc'
/copy 'qrpgleref/P256.rpgleinc'
/copy 'qrpgleref/P389.rpgleinc'

dcl-ds T84 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T84 FROM T84 LIMIT 1;

theCharVar = 'Hello from P1055';
dsply theCharVar;
callp localProc();
P777();
P256();
P389();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1055 in the procedure';
end-proc;