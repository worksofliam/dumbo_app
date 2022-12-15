**free

ctl-opt dftactgrp(*no);

dcl-pi P3410;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2645.rpgleinc'
/copy 'qrpgleref/P616.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'

dcl-ds T1368 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1368 FROM T1368 LIMIT 1;

theCharVar = 'Hello from P3410';
dsply theCharVar;
callp localProc();
P2645();
P616();
P1();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3410 in the procedure';
end-proc;