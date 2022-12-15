**free

ctl-opt dftactgrp(*no);

dcl-pi P2766;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2349.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'
/copy 'qrpgleref/P167.rpgleinc'

dcl-ds T1420 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1420 FROM T1420 LIMIT 1;

theCharVar = 'Hello from P2766';
dsply theCharVar;
callp localProc();
P2349();
P25();
P167();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2766 in the procedure';
end-proc;