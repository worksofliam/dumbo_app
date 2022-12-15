**free

ctl-opt dftactgrp(*no);

dcl-pi P783;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P172.rpgleinc'
/copy 'qrpgleref/P53.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'

dcl-ds T1583 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1583 FROM T1583 LIMIT 1;

theCharVar = 'Hello from P783';
dsply theCharVar;
callp localProc();
P172();
P53();
P60();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P783 in the procedure';
end-proc;