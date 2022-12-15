**free

ctl-opt dftactgrp(*no);

dcl-pi P1214;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P609.rpgleinc'
/copy 'qrpgleref/P629.rpgleinc'
/copy 'qrpgleref/P1098.rpgleinc'

dcl-ds theTable extname('T906') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T906 LIMIT 1;

theCharVar = 'Hello from P1214';
dsply theCharVar;
callp localProc();
P609();
P629();
P1098();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1214 in the procedure';
end-proc;