**free

ctl-opt dftactgrp(*no);

dcl-pi P50;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P42.rpgleinc'

dcl-ds T1546 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1546 FROM T1546 LIMIT 1;

theCharVar = 'Hello from P50';
dsply theCharVar;
callp localProc();
P27();
P41();
P42();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P50 in the procedure';
end-proc;