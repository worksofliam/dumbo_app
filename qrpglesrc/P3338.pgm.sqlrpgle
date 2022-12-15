**free

ctl-opt dftactgrp(*no);

dcl-pi P3338;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2102.rpgleinc'
/copy 'qrpgleref/P217.rpgleinc'
/copy 'qrpgleref/P1634.rpgleinc'

dcl-ds T27 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T27 FROM T27 LIMIT 1;

theCharVar = 'Hello from P3338';
dsply theCharVar;
callp localProc();
P2102();
P217();
P1634();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3338 in the procedure';
end-proc;