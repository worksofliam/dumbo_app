**free

ctl-opt dftactgrp(*no);

dcl-pi P1745;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P762.rpgleinc'
/copy 'qrpgleref/P1425.rpgleinc'
/copy 'qrpgleref/P269.rpgleinc'

dcl-ds theTable extname('T662') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T662 LIMIT 1;

theCharVar = 'Hello from P1745';
dsply theCharVar;
callp localProc();
P762();
P1425();
P269();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1745 in the procedure';
end-proc;