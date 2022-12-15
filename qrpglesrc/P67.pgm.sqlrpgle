**free

ctl-opt dftactgrp(*no);

dcl-pi P67;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'

dcl-ds theTable extname('T764') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T764 LIMIT 1;

theCharVar = 'Hello from P67';
dsply theCharVar;
callp localProc();
P15();
P50();
P43();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P67 in the procedure';
end-proc;