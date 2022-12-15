**free

ctl-opt dftactgrp(*no);

dcl-pi P1171;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P493.rpgleinc'
/copy 'qrpgleref/P587.rpgleinc'
/copy 'qrpgleref/P1107.rpgleinc'

dcl-ds theTable extname('T52') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T52 LIMIT 1;

theCharVar = 'Hello from P1171';
dsply theCharVar;
callp localProc();
P493();
P587();
P1107();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1171 in the procedure';
end-proc;