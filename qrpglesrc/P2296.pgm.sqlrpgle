**free

ctl-opt dftactgrp(*no);

dcl-pi P2296;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P664.rpgleinc'
/copy 'qrpgleref/P2257.rpgleinc'
/copy 'qrpgleref/P853.rpgleinc'

dcl-ds theTable extname('T983') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T983 LIMIT 1;

theCharVar = 'Hello from P2296';
dsply theCharVar;
callp localProc();
P664();
P2257();
P853();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2296 in the procedure';
end-proc;