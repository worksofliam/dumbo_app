**free

ctl-opt dftactgrp(*no);

dcl-pi P2031;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P1512.rpgleinc'
/copy 'qrpgleref/P1936.rpgleinc'

dcl-ds theTable extname('T820') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T820 LIMIT 1;

theCharVar = 'Hello from P2031';
dsply theCharVar;
callp localProc();
P23();
P1512();
P1936();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2031 in the procedure';
end-proc;