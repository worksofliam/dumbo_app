**free

ctl-opt dftactgrp(*no);

dcl-pi P34;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'

dcl-ds theTable extname('T42') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T42 LIMIT 1;

theCharVar = 'Hello from P34';
dsply theCharVar;
callp localProc();
P19();
P11();
P7();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P34 in the procedure';
end-proc;