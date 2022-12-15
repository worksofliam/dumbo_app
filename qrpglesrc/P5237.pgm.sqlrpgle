**free

ctl-opt dftactgrp(*no);

dcl-pi P5237;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1495.rpgleinc'
/copy 'qrpgleref/P1132.rpgleinc'
/copy 'qrpgleref/P3826.rpgleinc'

dcl-ds theTable extname('T1686') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1686 LIMIT 1;

theCharVar = 'Hello from P5237';
dsply theCharVar;
callp localProc();
P1495();
P1132();
P3826();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5237 in the procedure';
end-proc;