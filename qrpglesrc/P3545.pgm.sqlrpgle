**free

ctl-opt dftactgrp(*no);

dcl-pi P3545;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2561.rpgleinc'
/copy 'qrpgleref/P3236.rpgleinc'
/copy 'qrpgleref/P2658.rpgleinc'

dcl-ds T1851 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1851 FROM T1851 LIMIT 1;

theCharVar = 'Hello from P3545';
dsply theCharVar;
callp localProc();
P2561();
P3236();
P2658();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3545 in the procedure';
end-proc;