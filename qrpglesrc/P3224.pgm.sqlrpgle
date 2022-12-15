**free

ctl-opt dftactgrp(*no);

dcl-pi P3224;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1478.rpgleinc'
/copy 'qrpgleref/P1517.rpgleinc'
/copy 'qrpgleref/P870.rpgleinc'

dcl-ds T1625 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1625 FROM T1625 LIMIT 1;

theCharVar = 'Hello from P3224';
dsply theCharVar;
callp localProc();
P1478();
P1517();
P870();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3224 in the procedure';
end-proc;