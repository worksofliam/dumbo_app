**free

ctl-opt dftactgrp(*no);

dcl-pi P1710;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1441.rpgleinc'
/copy 'qrpgleref/P558.rpgleinc'
/copy 'qrpgleref/P668.rpgleinc'

dcl-ds theTable extname('T948') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T948 LIMIT 1;

theCharVar = 'Hello from P1710';
dsply theCharVar;
callp localProc();
P1441();
P558();
P668();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1710 in the procedure';
end-proc;