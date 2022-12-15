**free

ctl-opt dftactgrp(*no);

dcl-pi P4811;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2151.rpgleinc'
/copy 'qrpgleref/P3562.rpgleinc'
/copy 'qrpgleref/P4162.rpgleinc'

dcl-ds T1847 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1847 FROM T1847 LIMIT 1;

theCharVar = 'Hello from P4811';
dsply theCharVar;
callp localProc();
P2151();
P3562();
P4162();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4811 in the procedure';
end-proc;