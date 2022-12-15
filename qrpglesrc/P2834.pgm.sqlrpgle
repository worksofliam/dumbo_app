**free

ctl-opt dftactgrp(*no);

dcl-pi P2834;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P279.rpgleinc'
/copy 'qrpgleref/P1900.rpgleinc'
/copy 'qrpgleref/P461.rpgleinc'

dcl-ds T1629 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1629 FROM T1629 LIMIT 1;

theCharVar = 'Hello from P2834';
dsply theCharVar;
callp localProc();
P279();
P1900();
P461();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2834 in the procedure';
end-proc;