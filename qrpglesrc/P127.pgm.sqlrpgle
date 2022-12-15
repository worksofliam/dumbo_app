**free

ctl-opt dftactgrp(*no);

dcl-pi P127;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'

dcl-ds theTable extname('T3') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T3 LIMIT 1;

theCharVar = 'Hello from P127';
dsply theCharVar;
callp localProc();
P18();
P123();
P39();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P127 in the procedure';
end-proc;