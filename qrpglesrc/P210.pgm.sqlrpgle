**free

ctl-opt dftactgrp(*no);

dcl-pi P210;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'

dcl-ds theTable extname('T770') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T770 LIMIT 1;

theCharVar = 'Hello from P210';
dsply theCharVar;
callp localProc();
P17();
P27();
P90();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P210 in the procedure';
end-proc;