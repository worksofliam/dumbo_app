**free

ctl-opt dftactgrp(*no);

dcl-pi P507;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P114.rpgleinc'
/copy 'qrpgleref/P259.rpgleinc'
/copy 'qrpgleref/P78.rpgleinc'

dcl-ds theTable extname('T494') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T494 LIMIT 1;

theCharVar = 'Hello from P507';
dsply theCharVar;
callp localProc();
P114();
P259();
P78();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P507 in the procedure';
end-proc;