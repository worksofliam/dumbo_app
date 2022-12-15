**free

ctl-opt dftactgrp(*no);

dcl-pi P3188;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2821.rpgleinc'
/copy 'qrpgleref/P2260.rpgleinc'
/copy 'qrpgleref/P2210.rpgleinc'

dcl-ds T1042 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1042 FROM T1042 LIMIT 1;

theCharVar = 'Hello from P3188';
dsply theCharVar;
callp localProc();
P2821();
P2260();
P2210();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3188 in the procedure';
end-proc;