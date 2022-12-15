**free

ctl-opt dftactgrp(*no);

dcl-pi P1314;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P890.rpgleinc'
/copy 'qrpgleref/P1006.rpgleinc'
/copy 'qrpgleref/P643.rpgleinc'

dcl-ds theTable extname('T1111') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1111 LIMIT 1;

theCharVar = 'Hello from P1314';
dsply theCharVar;
callp localProc();
P890();
P1006();
P643();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1314 in the procedure';
end-proc;