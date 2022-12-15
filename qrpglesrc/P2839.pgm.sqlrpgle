**free

ctl-opt dftactgrp(*no);

dcl-pi P2839;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P2005.rpgleinc'
/copy 'qrpgleref/P2022.rpgleinc'

dcl-ds theTable extname('T463') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T463 LIMIT 1;

theCharVar = 'Hello from P2839';
dsply theCharVar;
callp localProc();
P35();
P2005();
P2022();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2839 in the procedure';
end-proc;