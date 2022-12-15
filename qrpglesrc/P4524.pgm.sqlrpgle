**free

ctl-opt dftactgrp(*no);

dcl-pi P4524;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1205.rpgleinc'
/copy 'qrpgleref/P4082.rpgleinc'
/copy 'qrpgleref/P622.rpgleinc'

dcl-ds theTable extname('T198') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T198 LIMIT 1;

theCharVar = 'Hello from P4524';
dsply theCharVar;
callp localProc();
P1205();
P4082();
P622();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4524 in the procedure';
end-proc;