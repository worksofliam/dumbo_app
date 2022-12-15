**free

ctl-opt dftactgrp(*no);

dcl-pi P5617;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3690.rpgleinc'
/copy 'qrpgleref/P1605.rpgleinc'
/copy 'qrpgleref/P486.rpgleinc'

dcl-ds theTable extname('T574') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T574 LIMIT 1;

theCharVar = 'Hello from P5617';
dsply theCharVar;
callp localProc();
P3690();
P1605();
P486();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5617 in the procedure';
end-proc;