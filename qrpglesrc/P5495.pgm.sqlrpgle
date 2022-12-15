**free

ctl-opt dftactgrp(*no);

dcl-pi P5495;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3693.rpgleinc'
/copy 'qrpgleref/P734.rpgleinc'
/copy 'qrpgleref/P4052.rpgleinc'

dcl-ds theTable extname('T1157') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1157 LIMIT 1;

theCharVar = 'Hello from P5495';
dsply theCharVar;
callp localProc();
P3693();
P734();
P4052();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5495 in the procedure';
end-proc;