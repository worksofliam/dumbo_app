**free

ctl-opt dftactgrp(*no);

dcl-pi P2916;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2866.rpgleinc'
/copy 'qrpgleref/P1068.rpgleinc'
/copy 'qrpgleref/P197.rpgleinc'

dcl-ds T892 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T892 FROM T892 LIMIT 1;

theCharVar = 'Hello from P2916';
dsply theCharVar;
callp localProc();
P2866();
P1068();
P197();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2916 in the procedure';
end-proc;