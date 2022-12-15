**free

ctl-opt dftactgrp(*no);

dcl-pi P1042;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P636.rpgleinc'
/copy 'qrpgleref/P510.rpgleinc'
/copy 'qrpgleref/P738.rpgleinc'

dcl-ds theTable extname('T82') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T82 LIMIT 1;

theCharVar = 'Hello from P1042';
dsply theCharVar;
callp localProc();
P636();
P510();
P738();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1042 in the procedure';
end-proc;