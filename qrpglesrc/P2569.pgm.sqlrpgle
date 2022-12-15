**free

ctl-opt dftactgrp(*no);

dcl-pi P2569;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P80.rpgleinc'
/copy 'qrpgleref/P1939.rpgleinc'
/copy 'qrpgleref/P299.rpgleinc'

dcl-ds T1128 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1128 FROM T1128 LIMIT 1;

theCharVar = 'Hello from P2569';
dsply theCharVar;
callp localProc();
P80();
P1939();
P299();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2569 in the procedure';
end-proc;