**free

ctl-opt dftactgrp(*no);

dcl-pi P1130;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P858.rpgleinc'
/copy 'qrpgleref/P716.rpgleinc'
/copy 'qrpgleref/P857.rpgleinc'

dcl-ds theTable extname('T1356') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1356 LIMIT 1;

theCharVar = 'Hello from P1130';
dsply theCharVar;
callp localProc();
P858();
P716();
P857();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1130 in the procedure';
end-proc;