**free

ctl-opt dftactgrp(*no);

dcl-pi P3840;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3151.rpgleinc'
/copy 'qrpgleref/P281.rpgleinc'
/copy 'qrpgleref/P1115.rpgleinc'

dcl-ds theTable extname('T981') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T981 LIMIT 1;

theCharVar = 'Hello from P3840';
dsply theCharVar;
callp localProc();
P3151();
P281();
P1115();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3840 in the procedure';
end-proc;