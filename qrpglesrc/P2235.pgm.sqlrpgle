**free

ctl-opt dftactgrp(*no);

dcl-pi P2235;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P884.rpgleinc'
/copy 'qrpgleref/P2063.rpgleinc'
/copy 'qrpgleref/P604.rpgleinc'

dcl-ds theTable extname('T337') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T337 LIMIT 1;

theCharVar = 'Hello from P2235';
dsply theCharVar;
callp localProc();
P884();
P2063();
P604();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2235 in the procedure';
end-proc;