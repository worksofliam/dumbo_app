**free

ctl-opt dftactgrp(*no);

dcl-pi P1718;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1482.rpgleinc'
/copy 'qrpgleref/P275.rpgleinc'
/copy 'qrpgleref/P1489.rpgleinc'

dcl-ds T549 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T549 FROM T549 LIMIT 1;

theCharVar = 'Hello from P1718';
dsply theCharVar;
callp localProc();
P1482();
P275();
P1489();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1718 in the procedure';
end-proc;