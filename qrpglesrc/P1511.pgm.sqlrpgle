**free

ctl-opt dftactgrp(*no);

dcl-pi P1511;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P378.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P1228.rpgleinc'

dcl-ds T954 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T954 FROM T954 LIMIT 1;

theCharVar = 'Hello from P1511';
dsply theCharVar;
callp localProc();
P378();
P28();
P1228();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1511 in the procedure';
end-proc;