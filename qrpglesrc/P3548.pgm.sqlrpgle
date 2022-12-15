**free

ctl-opt dftactgrp(*no);

dcl-pi P3548;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2469.rpgleinc'
/copy 'qrpgleref/P630.rpgleinc'
/copy 'qrpgleref/P2756.rpgleinc'

dcl-ds T1772 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1772 FROM T1772 LIMIT 1;

theCharVar = 'Hello from P3548';
dsply theCharVar;
callp localProc();
P2469();
P630();
P2756();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3548 in the procedure';
end-proc;