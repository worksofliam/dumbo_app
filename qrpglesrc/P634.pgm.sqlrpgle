**free

ctl-opt dftactgrp(*no);

dcl-pi P634;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P238.rpgleinc'
/copy 'qrpgleref/P560.rpgleinc'
/copy 'qrpgleref/P593.rpgleinc'

dcl-ds theTable extname('T255') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T255 LIMIT 1;

theCharVar = 'Hello from P634';
dsply theCharVar;
callp localProc();
P238();
P560();
P593();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P634 in the procedure';
end-proc;