**free

ctl-opt dftactgrp(*no);

dcl-pi P2381;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1422.rpgleinc'
/copy 'qrpgleref/P711.rpgleinc'
/copy 'qrpgleref/P489.rpgleinc'

dcl-ds T1197 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1197 FROM T1197 LIMIT 1;

theCharVar = 'Hello from P2381';
dsply theCharVar;
callp localProc();
P1422();
P711();
P489();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2381 in the procedure';
end-proc;