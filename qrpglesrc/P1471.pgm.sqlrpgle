**free

ctl-opt dftactgrp(*no);

dcl-pi P1471;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P842.rpgleinc'
/copy 'qrpgleref/P1188.rpgleinc'
/copy 'qrpgleref/P815.rpgleinc'

dcl-ds T1232 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1232 FROM T1232 LIMIT 1;

theCharVar = 'Hello from P1471';
dsply theCharVar;
callp localProc();
P842();
P1188();
P815();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1471 in the procedure';
end-proc;