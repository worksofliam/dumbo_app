**free

ctl-opt dftactgrp(*no);

dcl-pi P2552;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2462.rpgleinc'
/copy 'qrpgleref/P1612.rpgleinc'
/copy 'qrpgleref/P1262.rpgleinc'

dcl-ds T1364 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1364 FROM T1364 LIMIT 1;

theCharVar = 'Hello from P2552';
dsply theCharVar;
callp localProc();
P2462();
P1612();
P1262();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2552 in the procedure';
end-proc;