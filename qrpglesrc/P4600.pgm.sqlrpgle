**free

ctl-opt dftactgrp(*no);

dcl-pi P4600;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1086.rpgleinc'
/copy 'qrpgleref/P2141.rpgleinc'
/copy 'qrpgleref/P4129.rpgleinc'

dcl-ds T844 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T844 FROM T844 LIMIT 1;

theCharVar = 'Hello from P4600';
dsply theCharVar;
callp localProc();
P1086();
P2141();
P4129();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4600 in the procedure';
end-proc;