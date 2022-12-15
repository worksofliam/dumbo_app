**free

ctl-opt dftactgrp(*no);

dcl-pi P1330;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P916.rpgleinc'
/copy 'qrpgleref/P424.rpgleinc'
/copy 'qrpgleref/P386.rpgleinc'

dcl-ds theTable extname('T561') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T561 LIMIT 1;

theCharVar = 'Hello from P1330';
dsply theCharVar;
callp localProc();
P916();
P424();
P386();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1330 in the procedure';
end-proc;