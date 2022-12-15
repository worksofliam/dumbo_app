**free

ctl-opt dftactgrp(*no);

dcl-pi P2011;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P786.rpgleinc'
/copy 'qrpgleref/P1967.rpgleinc'
/copy 'qrpgleref/P485.rpgleinc'

dcl-ds theTable extname('T568') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T568 LIMIT 1;

theCharVar = 'Hello from P2011';
dsply theCharVar;
callp localProc();
P786();
P1967();
P485();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2011 in the procedure';
end-proc;