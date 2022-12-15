**free

ctl-opt dftactgrp(*no);

dcl-pi P107;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'

dcl-ds theTable extname('T146') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T146 LIMIT 1;

theCharVar = 'Hello from P107';
dsply theCharVar;
callp localProc();
P77();
P9();
P16();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P107 in the procedure';
end-proc;