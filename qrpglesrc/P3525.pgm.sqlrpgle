**free

ctl-opt dftactgrp(*no);

dcl-pi P3525;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2181.rpgleinc'
/copy 'qrpgleref/P3014.rpgleinc'
/copy 'qrpgleref/P2903.rpgleinc'

dcl-ds theTable extname('T631') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T631 LIMIT 1;

theCharVar = 'Hello from P3525';
dsply theCharVar;
callp localProc();
P2181();
P3014();
P2903();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3525 in the procedure';
end-proc;