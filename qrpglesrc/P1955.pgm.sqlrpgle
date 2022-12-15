**free

ctl-opt dftactgrp(*no);

dcl-pi P1955;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1573.rpgleinc'
/copy 'qrpgleref/P744.rpgleinc'
/copy 'qrpgleref/P342.rpgleinc'

dcl-ds T0 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T0 FROM T0 LIMIT 1;

theCharVar = 'Hello from P1955';
dsply theCharVar;
callp localProc();
P1573();
P744();
P342();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1955 in the procedure';
end-proc;