**free

ctl-opt dftactgrp(*no);

dcl-pi P2322;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P414.rpgleinc'
/copy 'qrpgleref/P1697.rpgleinc'
/copy 'qrpgleref/P914.rpgleinc'

dcl-ds T1758 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1758 FROM T1758 LIMIT 1;

theCharVar = 'Hello from P2322';
dsply theCharVar;
callp localProc();
P414();
P1697();
P914();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2322 in the procedure';
end-proc;