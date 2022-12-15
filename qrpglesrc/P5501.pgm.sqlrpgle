**free

ctl-opt dftactgrp(*no);

dcl-pi P5501;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2176.rpgleinc'
/copy 'qrpgleref/P4586.rpgleinc'
/copy 'qrpgleref/P105.rpgleinc'

dcl-ds T1636 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1636 FROM T1636 LIMIT 1;

theCharVar = 'Hello from P5501';
dsply theCharVar;
callp localProc();
P2176();
P4586();
P105();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5501 in the procedure';
end-proc;