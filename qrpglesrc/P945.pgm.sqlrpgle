**free

ctl-opt dftactgrp(*no);

dcl-pi P945;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P47.rpgleinc'
/copy 'qrpgleref/P757.rpgleinc'
/copy 'qrpgleref/P198.rpgleinc'

dcl-ds theTable extname('T545') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T545 LIMIT 1;

theCharVar = 'Hello from P945';
dsply theCharVar;
callp localProc();
P47();
P757();
P198();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P945 in the procedure';
end-proc;