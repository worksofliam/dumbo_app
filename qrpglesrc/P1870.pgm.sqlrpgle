**free

ctl-opt dftactgrp(*no);

dcl-pi P1870;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1519.rpgleinc'
/copy 'qrpgleref/P1084.rpgleinc'
/copy 'qrpgleref/P1567.rpgleinc'

dcl-ds T1173 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1173 FROM T1173 LIMIT 1;

theCharVar = 'Hello from P1870';
dsply theCharVar;
callp localProc();
P1519();
P1084();
P1567();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1870 in the procedure';
end-proc;