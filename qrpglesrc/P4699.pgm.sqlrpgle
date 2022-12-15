**free

ctl-opt dftactgrp(*no);

dcl-pi P4699;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3195.rpgleinc'
/copy 'qrpgleref/P739.rpgleinc'
/copy 'qrpgleref/P579.rpgleinc'

dcl-ds theTable extname('T886') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T886 LIMIT 1;

theCharVar = 'Hello from P4699';
dsply theCharVar;
callp localProc();
P3195();
P739();
P579();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4699 in the procedure';
end-proc;