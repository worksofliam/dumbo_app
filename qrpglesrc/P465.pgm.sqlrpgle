**free

ctl-opt dftactgrp(*no);

dcl-pi P465;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P336.rpgleinc'
/copy 'qrpgleref/P269.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'

dcl-ds theTable extname('T155') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T155 LIMIT 1;

theCharVar = 'Hello from P465';
dsply theCharVar;
callp localProc();
P336();
P269();
P51();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P465 in the procedure';
end-proc;