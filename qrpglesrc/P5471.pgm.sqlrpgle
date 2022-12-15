**free

ctl-opt dftactgrp(*no);

dcl-pi P5471;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4124.rpgleinc'
/copy 'qrpgleref/P3567.rpgleinc'
/copy 'qrpgleref/P4402.rpgleinc'

dcl-ds T814 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T814 FROM T814 LIMIT 1;

theCharVar = 'Hello from P5471';
dsply theCharVar;
callp localProc();
P4124();
P3567();
P4402();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5471 in the procedure';
end-proc;