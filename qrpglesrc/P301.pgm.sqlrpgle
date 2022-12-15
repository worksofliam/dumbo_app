**free

ctl-opt dftactgrp(*no);

dcl-pi P301;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P61.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P262.rpgleinc'

dcl-ds theTable extname('T91') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T91 LIMIT 1;

theCharVar = 'Hello from P301';
dsply theCharVar;
callp localProc();
P61();
P162();
P262();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P301 in the procedure';
end-proc;