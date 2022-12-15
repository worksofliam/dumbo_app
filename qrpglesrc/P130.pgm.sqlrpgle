**free

ctl-opt dftactgrp(*no);

dcl-pi P130;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'

dcl-ds theTable extname('T302') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T302 LIMIT 1;

theCharVar = 'Hello from P130';
dsply theCharVar;
callp localProc();
P21();
P17();
P27();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P130 in the procedure';
end-proc;