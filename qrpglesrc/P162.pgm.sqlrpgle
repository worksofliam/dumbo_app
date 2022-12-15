**free

ctl-opt dftactgrp(*no);

dcl-pi P162;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P126.rpgleinc'
/copy 'qrpgleref/P37.rpgleinc'
/copy 'qrpgleref/P66.rpgleinc'

dcl-ds theTable extname('T182') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T182 LIMIT 1;

theCharVar = 'Hello from P162';
dsply theCharVar;
callp localProc();
P126();
P37();
P66();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P162 in the procedure';
end-proc;