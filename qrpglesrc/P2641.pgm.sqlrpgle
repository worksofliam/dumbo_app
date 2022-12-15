**free

ctl-opt dftactgrp(*no);

dcl-pi P2641;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2317.rpgleinc'
/copy 'qrpgleref/P128.rpgleinc'
/copy 'qrpgleref/P1990.rpgleinc'

dcl-ds T496 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T496 FROM T496 LIMIT 1;

theCharVar = 'Hello from P2641';
dsply theCharVar;
callp localProc();
P2317();
P128();
P1990();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2641 in the procedure';
end-proc;