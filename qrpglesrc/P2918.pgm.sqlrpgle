**free

ctl-opt dftactgrp(*no);

dcl-pi P2918;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1981.rpgleinc'
/copy 'qrpgleref/P1407.rpgleinc'
/copy 'qrpgleref/P1022.rpgleinc'

dcl-ds T60 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T60 FROM T60 LIMIT 1;

theCharVar = 'Hello from P2918';
dsply theCharVar;
callp localProc();
P1981();
P1407();
P1022();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2918 in the procedure';
end-proc;