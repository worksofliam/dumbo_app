**free

ctl-opt dftactgrp(*no);

dcl-pi P54;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'

dcl-ds theTable extname('T289') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T289 LIMIT 1;

theCharVar = 'Hello from P54';
dsply theCharVar;
callp localProc();
P4();
P8();
P39();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P54 in the procedure';
end-proc;