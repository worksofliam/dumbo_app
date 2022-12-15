**free

ctl-opt dftactgrp(*no);

dcl-pi P3822;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1056.rpgleinc'
/copy 'qrpgleref/P1698.rpgleinc'
/copy 'qrpgleref/P1663.rpgleinc'

dcl-ds theTable extname('T361') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T361 LIMIT 1;

theCharVar = 'Hello from P3822';
dsply theCharVar;
callp localProc();
P1056();
P1698();
P1663();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3822 in the procedure';
end-proc;