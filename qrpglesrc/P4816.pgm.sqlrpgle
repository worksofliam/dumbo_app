**free

ctl-opt dftactgrp(*no);

dcl-pi P4816;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P793.rpgleinc'
/copy 'qrpgleref/P4246.rpgleinc'
/copy 'qrpgleref/P2490.rpgleinc'

dcl-ds T123 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T123 FROM T123 LIMIT 1;

theCharVar = 'Hello from P4816';
dsply theCharVar;
callp localProc();
P793();
P4246();
P2490();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4816 in the procedure';
end-proc;