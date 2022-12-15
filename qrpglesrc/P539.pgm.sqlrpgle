**free

ctl-opt dftactgrp(*no);

dcl-pi P539;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P301.rpgleinc'
/copy 'qrpgleref/P53.rpgleinc'
/copy 'qrpgleref/P461.rpgleinc'

dcl-ds theTable extname('T19') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T19 LIMIT 1;

theCharVar = 'Hello from P539';
dsply theCharVar;
callp localProc();
P301();
P53();
P461();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P539 in the procedure';
end-proc;