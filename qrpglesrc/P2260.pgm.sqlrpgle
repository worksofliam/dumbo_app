**free

ctl-opt dftactgrp(*no);

dcl-pi P2260;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P116.rpgleinc'
/copy 'qrpgleref/P210.rpgleinc'
/copy 'qrpgleref/P1239.rpgleinc'

dcl-ds T1128 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1128 FROM T1128 LIMIT 1;

theCharVar = 'Hello from P2260';
dsply theCharVar;
callp localProc();
P116();
P210();
P1239();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2260 in the procedure';
end-proc;