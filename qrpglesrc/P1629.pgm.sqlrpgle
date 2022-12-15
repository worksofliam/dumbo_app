**free

ctl-opt dftactgrp(*no);

dcl-pi P1629;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P153.rpgleinc'
/copy 'qrpgleref/P990.rpgleinc'
/copy 'qrpgleref/P702.rpgleinc'

dcl-ds T505 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T505 FROM T505 LIMIT 1;

theCharVar = 'Hello from P1629';
dsply theCharVar;
callp localProc();
P153();
P990();
P702();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1629 in the procedure';
end-proc;