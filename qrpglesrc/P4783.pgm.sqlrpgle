**free

ctl-opt dftactgrp(*no);

dcl-pi P4783;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1833.rpgleinc'
/copy 'qrpgleref/P1867.rpgleinc'
/copy 'qrpgleref/P4630.rpgleinc'

dcl-ds T1488 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1488 FROM T1488 LIMIT 1;

theCharVar = 'Hello from P4783';
dsply theCharVar;
callp localProc();
P1833();
P1867();
P4630();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4783 in the procedure';
end-proc;