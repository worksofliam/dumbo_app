**free

ctl-opt dftactgrp(*no);

dcl-pi P2943;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P458.rpgleinc'
/copy 'qrpgleref/P2591.rpgleinc'
/copy 'qrpgleref/P1545.rpgleinc'

dcl-ds T701 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T701 FROM T701 LIMIT 1;

theCharVar = 'Hello from P2943';
dsply theCharVar;
callp localProc();
P458();
P2591();
P1545();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2943 in the procedure';
end-proc;