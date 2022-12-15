**free

ctl-opt dftactgrp(*no);

dcl-pi P1096;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P864.rpgleinc'
/copy 'qrpgleref/P354.rpgleinc'

dcl-ds theTable extname('T1059') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1059 LIMIT 1;

theCharVar = 'Hello from P1096';
dsply theCharVar;
callp localProc();
P19();
P864();
P354();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1096 in the procedure';
end-proc;