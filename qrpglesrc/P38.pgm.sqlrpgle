**free

ctl-opt dftactgrp(*no);

dcl-pi P38;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'

dcl-ds theTable extname('T102') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T102 LIMIT 1;

theCharVar = 'Hello from P38';
dsply theCharVar;
callp localProc();
P19();
P21();
P12();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P38 in the procedure';
end-proc;