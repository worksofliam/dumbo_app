**free

ctl-opt dftactgrp(*no);

dcl-pi P1071;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P779.rpgleinc'
/copy 'qrpgleref/P345.rpgleinc'
/copy 'qrpgleref/P667.rpgleinc'

dcl-ds theTable extname('T184') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T184 LIMIT 1;

theCharVar = 'Hello from P1071';
dsply theCharVar;
callp localProc();
P779();
P345();
P667();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1071 in the procedure';
end-proc;