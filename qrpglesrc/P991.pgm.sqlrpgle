**free

ctl-opt dftactgrp(*no);

dcl-pi P991;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P419.rpgleinc'
/copy 'qrpgleref/P215.rpgleinc'

dcl-ds theTable extname('T997') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T997 LIMIT 1;

theCharVar = 'Hello from P991';
dsply theCharVar;
callp localProc();
P27();
P419();
P215();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P991 in the procedure';
end-proc;