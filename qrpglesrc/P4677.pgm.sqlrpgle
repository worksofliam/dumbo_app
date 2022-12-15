**free

ctl-opt dftactgrp(*no);

dcl-pi P4677;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P535.rpgleinc'
/copy 'qrpgleref/P2691.rpgleinc'
/copy 'qrpgleref/P489.rpgleinc'

dcl-ds theTable extname('T158') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T158 LIMIT 1;

theCharVar = 'Hello from P4677';
dsply theCharVar;
callp localProc();
P535();
P2691();
P489();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4677 in the procedure';
end-proc;