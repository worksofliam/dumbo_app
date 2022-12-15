**free

ctl-opt dftactgrp(*no);

dcl-pi P1135;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P908.rpgleinc'
/copy 'qrpgleref/P699.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'

dcl-ds theTable extname('T309') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T309 LIMIT 1;

theCharVar = 'Hello from P1135';
dsply theCharVar;
callp localProc();
P908();
P699();
P16();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1135 in the procedure';
end-proc;