**free

ctl-opt dftactgrp(*no);

dcl-pi P12;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'

dcl-ds theTable extname('T177') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T177 LIMIT 1;

theCharVar = 'Hello from P12';
dsply theCharVar;
callp localProc();
P2();
P9();
P0();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P12 in the procedure';
end-proc;