**free

ctl-opt dftactgrp(*no);

dcl-pi P1674;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P166.rpgleinc'
/copy 'qrpgleref/P1622.rpgleinc'
/copy 'qrpgleref/P1227.rpgleinc'

dcl-ds theTable extname('T537') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T537 LIMIT 1;

theCharVar = 'Hello from P1674';
dsply theCharVar;
callp localProc();
P166();
P1622();
P1227();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1674 in the procedure';
end-proc;