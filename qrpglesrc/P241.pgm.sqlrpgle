**free

ctl-opt dftactgrp(*no);

dcl-pi P241;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P118.rpgleinc'
/copy 'qrpgleref/P113.rpgleinc'
/copy 'qrpgleref/P201.rpgleinc'

dcl-ds theTable extname('T168') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T168 LIMIT 1;

theCharVar = 'Hello from P241';
dsply theCharVar;
callp localProc();
P118();
P113();
P201();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P241 in the procedure';
end-proc;