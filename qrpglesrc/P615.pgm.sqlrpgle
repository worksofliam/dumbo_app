**free

ctl-opt dftactgrp(*no);

dcl-pi P615;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P449.rpgleinc'
/copy 'qrpgleref/P327.rpgleinc'
/copy 'qrpgleref/P478.rpgleinc'

dcl-ds theTable extname('T20') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T20 LIMIT 1;

theCharVar = 'Hello from P615';
dsply theCharVar;
callp localProc();
P449();
P327();
P478();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P615 in the procedure';
end-proc;