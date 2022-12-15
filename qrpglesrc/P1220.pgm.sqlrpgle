**free

ctl-opt dftactgrp(*no);

dcl-pi P1220;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P574.rpgleinc'
/copy 'qrpgleref/P488.rpgleinc'
/copy 'qrpgleref/P171.rpgleinc'

dcl-ds theTable extname('T40') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T40 LIMIT 1;

theCharVar = 'Hello from P1220';
dsply theCharVar;
callp localProc();
P574();
P488();
P171();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1220 in the procedure';
end-proc;