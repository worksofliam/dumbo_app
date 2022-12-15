**free

ctl-opt dftactgrp(*no);

dcl-pi P3612;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1669.rpgleinc'
/copy 'qrpgleref/P478.rpgleinc'
/copy 'qrpgleref/P3112.rpgleinc'

dcl-ds T925 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T925 FROM T925 LIMIT 1;

theCharVar = 'Hello from P3612';
dsply theCharVar;
callp localProc();
P1669();
P478();
P3112();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3612 in the procedure';
end-proc;