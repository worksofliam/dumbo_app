**free

ctl-opt dftactgrp(*no);

dcl-pi P2505;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1981.rpgleinc'
/copy 'qrpgleref/P2401.rpgleinc'
/copy 'qrpgleref/P1786.rpgleinc'

dcl-ds T20 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T20 FROM T20 LIMIT 1;

theCharVar = 'Hello from P2505';
dsply theCharVar;
callp localProc();
P1981();
P2401();
P1786();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2505 in the procedure';
end-proc;