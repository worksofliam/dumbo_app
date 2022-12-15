**free

ctl-opt dftactgrp(*no);

dcl-pi P3331;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2762.rpgleinc'
/copy 'qrpgleref/P714.rpgleinc'
/copy 'qrpgleref/P2054.rpgleinc'

dcl-ds theTable extname('T483') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T483 LIMIT 1;

theCharVar = 'Hello from P3331';
dsply theCharVar;
callp localProc();
P2762();
P714();
P2054();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3331 in the procedure';
end-proc;