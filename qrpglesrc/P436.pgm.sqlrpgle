**free

ctl-opt dftactgrp(*no);

dcl-pi P436;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P269.rpgleinc'
/copy 'qrpgleref/P320.rpgleinc'
/copy 'qrpgleref/P109.rpgleinc'

dcl-ds theTable extname('T392') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T392 LIMIT 1;

theCharVar = 'Hello from P436';
dsply theCharVar;
callp localProc();
P269();
P320();
P109();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P436 in the procedure';
end-proc;